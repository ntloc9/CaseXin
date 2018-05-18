class OrderItem < ApplicationRecord
  belongs_to :oplung
  belongs_to :order


  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :oplung_present
  validate :order_present

  before_save :finalize

  def unit_price  #giá tiền của sản phẩm khi đó trong bảng product sẽ được lưu lại trong trường unit_price, sẽ không thay đổi khi cập nhật giá
    if persisted?
      self[:unit_price]
    else
      oplung.price
    end
  end

  def total_price
    unit_price * quantity
  end

private
  def oplung_present
    if oplung.nil?
      errors.add(:oplung, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end

end
