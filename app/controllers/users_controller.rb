class UsersController < ApplicationController
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = 'Użytkownik został utworzony.'
			redirect_to root_path
		else
			flash[:danger] = "Coś poszło nie tak, spróbuj ponownie."
			render :new
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update
			flash[:success] = 'Użytkownik został zapisany.'
			redirect_to user_path(@user)
		else
			flash[:danger] = "Coś poszło nie tak, spróbuj ponownie."
			render :edit
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:success] = 'Użytkownik został usunięty.'
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password)
	end

end