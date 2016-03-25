class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :admin?

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def logged_in?
		!!current_user
	end

	def admin?
		logged_in? && current_user.admin
	end

	def admin_user
		unless admin?
			redirect_to root_path 
			flash[:danger] = 'Tylko administrator może to zrobić!'
		end
	end

	def logged_user
		unless current_user
			redirect_to root_path 
			flash[:danger] = 'Tylko zalogowany użytkownik może to zrobić!'
		end
	end

	def require_same_user_or_admin
		if current_user != @user && !admin?
			flash[:danger] = "Możesz edytować tylko swoje dane."
			redirect_to root_path
		end
  end
end
