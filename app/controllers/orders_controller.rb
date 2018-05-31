class OrdersController < ApplicationController
  def new
    @order = current_cart.order
  end

  def index
      
    @oders = Order.all
  end

  def create
    @order = current_cart.order
    if @order.update_attributes(order_params.merge(status: 'open'))
      session[:cart_token] = nil
      format.html { redirect_to root_path, notice: 'Đã đặt hàng thành công.' }
    else
      render 'new'
    end
  end

  private
  def order_params
    params.require(:order).permit(:name, :phone, :diachi)
  end
end
