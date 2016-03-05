class UsersController < ApplicationController
	before_action :find_user, only: [:edit, :update, :show, :destroy]
	before_action :require_same_user, only: [:edit, :update]
	before_action :admin_user, only: :destroy
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = 'Użytkownik został utworzony.'
			session[:user_id] = @user.id
			redirect_to root_path
		else
			flash[:danger] = "Coś poszło nie tak, spróbuj ponownie."
			render :new
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			flash[:success] = 'Użytkownik został zapisany.'
			redirect_to root_path
		else
			flash[:danger] = "Coś poszło nie tak, spróbuj ponownie."
			render :edit
		end
	end

	def show
		@user_com = @user.comments.paginate(page: params[:page], per_page: 5)
	end

	def destroy
		@user.destroy
		flash[:success] = 'Użytkownik został usunięty.'
		redirect_to root_path
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password)
	end

	def require_same_user
		if current_user != @user
			flash[:danger] = "Możesz edytować tylko swój profil."
			redirect_to root_path
		end
  end

  def find_user
  	@user = User.find(params[:id])
  end
end