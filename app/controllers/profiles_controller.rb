class ProfilesController < ApplicationController
    
  def new
    @user = User.find(params[:user_id])
    @profile = @user.build_profile
  end

  def create
    @user = User.find( params[:user_id] )
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
    @user = User.find( params[:user_id] )
    @user_com = @user.comments.paginate(page: params[:page], per_page: 5)
    @profile = @user.profile
  end

  def edit
    @user = User.find( params[:user_id] )
    @profile = @user.profile
  end

  def update
    @user = User.find( params[:user_id] )
    @profile = @user.profile
    if @profile.update_attributes(profile_params)
      flash[:success] = 'Profil zaktualizowany!'
      redirect_to user_path(@user)
    else
      flash[:danger] = 'Poprawnie uzupełnij wszystkie pola!'
      render action: :edit
    end
  end

private
  def profile_params
    params.require(:profile).permit(:name, :surname, :favorite, :bio) 
  end    
end