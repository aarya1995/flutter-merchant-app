class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def after_sign_in_path_for(resource)
    # check for class of the object
    if resource.class == Merchant
  	 '/dashboard/main'
    elsif resource.class == Admin
      '/admin_dashboard/main'
    end
  end

  def after_sign_out_path_for(resource) # does not matter whether merchant or admin
  	'/static_pages/index'
  end

end
