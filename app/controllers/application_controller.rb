class ApplicationController < ActionController::Base
  protect_from_forgery
   
  helper_method :admin_logged_in 

	def admin_logged_in
		current_admin_user
	end
end
