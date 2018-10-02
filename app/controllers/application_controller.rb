class ApplicationController < ActionController::Base
    protect_from_forgery
    before_action :configure_permitted_parameters, if: :devise_controller?

    rescue_from CanCan::AccessDenied do |exception|
        flash[:error] = exception.message
        redirect_to root_url
    end

    protected
    def configure_permitted_parameters
        update_attrs = [:password, :password_confirmation, :current_password]

        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :lastname, :ci, :cellphone, :career, :role, :email, :password)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :lastname, :ci, :cellphone, :career, :email, :role, update_attrs)}
    end
end
