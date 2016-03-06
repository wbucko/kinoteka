class ProfilesController < ApplicationController
  before_action :find_user
  before_action :set_profile, only: [:show, :edit, :update]
  before_action :find_profile, except: [:new, :create]
    
  def new
    @profile = @user.build_profile
  end

  def create
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = "Profil utworzony!"
      redirect_to root_path
    else
      flash[:danger] = 'Poprawnie uzupełnij wszystkie pola!'
      render action: :new
    end
  end

  def show
    @user_com = @user.comments.paginate(page: params[:page], per_page: 5)
  end

  def edit
  end

  def update
    if @profile.update_attributes(profile_params)
      flash[:success] = 'Profil zaktualizowany!'
      redirect_to user_profile_path(@user)
    else
      flash[:danger] = 'Poprawnie uzupełnij wszystkie pola!'
      render action: :edit
    end
  end

private
  def profile_params
    params.require(:profile).permit(:name, :surname, :favorite, :bio) 
  end

  def find_profile
    redirect_to new_user_profile_url unless @profile  
  end 

  def find_user
    @user = User.find(params[:user_id])
  end

  def set_profile
    @profile = @user.profile
  end
end