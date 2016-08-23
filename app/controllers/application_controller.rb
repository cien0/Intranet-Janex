class ApplicationController < ActionController::Base
#    before_action :authenticate_user!  
    before_action :configure_permitted_parameters, if: :devise_controller?
    rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
    end
    protect_from_forgery with: :exception


protected 
def configure_permitted_parameters
 devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
end

end
