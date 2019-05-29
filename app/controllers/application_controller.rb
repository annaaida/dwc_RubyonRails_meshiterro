class ApplicationController < ActionController::Base

	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end

	Refile.secret_key = '3740e746c5ec2462a694c8ff036cee344a3980db3f3f1ac85334ccfe87d0f6b2f1eb2fc632b45648ed406154fc14e80b5fc995755ab5c34aefd0d2cdee1480cd'

end
