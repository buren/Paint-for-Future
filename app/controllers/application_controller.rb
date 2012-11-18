class ApplicationController < ActionController::Base
  protect_from_forgery
   
  helper_method :admin_logged_in 

	def admin_logged_in
		if current_admin_user != nil 
			return true
		else
			return false
		end
	end
end
