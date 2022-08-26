class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :config_params, if: :devise_controller?

 private
   def after_sign_in_path_for(resource)
   	if current_user.roles.blank? && params[:user][:roles]
      role = Role.find_by(field: params[:user][:roles])
      current_user.roles << role if role 
  end
    if current_user.roles.first.field == 'Customer'
      return bookings_path
    else
      return properties_path
    end 
end

protected
  def config_params
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:full_name, :email, :account_no , :password, :password_confirmation)}
    end

end