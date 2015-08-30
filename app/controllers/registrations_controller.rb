class RegistrationsController < Devise::RegistrationsController
	protected
	
	# technically there shouldn't be any sign up path for merchants or admins

	def after_sign_up_path_for(resource)
		if resource.class == Merchant
			'/merchant_applications/thanks'
		elsif resource.class == Admin
			'/admin_dashboard/main'
		end
	end
end
