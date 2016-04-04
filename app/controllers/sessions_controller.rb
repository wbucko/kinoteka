class SessionsController < ApplicationController

	def new
		redirect_to root_path if current_user
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:success] = 'Zostałeś zalogowany.'
			redirect_to root_path
		else
			flash.now[:danger] = 'Twój email lub hasło jest niepoprawne.'
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = 'Zostałes wylogowany.'
		redirect_to root_path
	end

end