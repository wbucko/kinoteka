class MoviesController < ApplicationController
	before_action :find_movie, only: [:edit, :update, :show, :destroy]
	before_action :admin_user, except: [:index, :show]

	def index
		@movies = Movie.show(params[:show]).search(params[:keyword]).paginate(page: params[:page], per_page: 5)
	end 

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movies_params)
		if @movie.save
			flash[:success] = 'Film został zapisany'
			redirect_to root_path
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :new
		end
	end

	def edit
	end

	def update
		if @movie.update(movies_params)
			flash[:success] = 'Film został zapisany'
			redirect_to movie_path(@movie)
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :edit
		end
	end

	def show
	end

	def destroy
		@movie.destroy
		flash[:success] = 'Film został usunięty'
		redirect_to movies_path
	end

	private
	def movies_params
		params.require(:movie).permit(:title, :year, :director_id, :photo_url, :show, :review)
	end

	def find_movie
  	@movie = Movie.find(params[:id])
  end

end