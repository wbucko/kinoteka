class DirectorsController < ApplicationController
	before_action :set_director, only: [:edit, :update, :destroy, :show]
	before_action :admin_user, except: [:index, :show]
	
	def index
		@directors = Director.paginate(page: params[:page], per_page: 10)
	end	

	def new
		@director = Director.new
	end

	def create
		@director = Director.new(directors_params)
		if @director.save
			flash[:success] = 'Reżyser został zapisany.'
			redirect_to directors_path
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :new
		end
	end

	def edit
	end

	def update
		if @director.update(directors_params)
			flash[:success] = 'Reżyser został zapisany.'
			redirect_to @director
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :edit
		end	
	end

	def destroy
		@director.destroy
		flash[:success] = 'Reżyser został usunięty.'
		redirect_to directors_path
	end

	def show
	end

	private
	def directors_params
		params.require(:director).permit(:name, :photo_url, :birth, :bio)
	end

	def set_director
		@director = Director.find(params[:id])
	end
end
