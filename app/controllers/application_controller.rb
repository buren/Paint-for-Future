class ApplicationController < ActionController::Base
  protect_from_forgery

	def admin_logged_in
		current_admin_user
	end
end
