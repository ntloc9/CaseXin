class RegistrationsController < Devise::RegistrationsController
  # before_action :require_admin
    private
    def sign_in_params
       params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def sign_up_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

    def account_update_params
       params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
    end

    # def require_admin
    #   if !user_signed_in? && (user_signed_in? and !current_user.admin?)
    #     flash[:danger] = "Trang này đang trong thời gian xây dựng"
    #     redirect_to root_path
    #   end
    # end

end
