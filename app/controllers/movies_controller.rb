class MoviesController < ApplicationController
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
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		if @movie.update(movies_params)
			flash[:success] = 'Film został zapisany'
			redirect_to movie_path(@movie)
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :edit
		end
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		flash[:success] = 'Film został usunięty'
		redirect_to root_path
	end

	private
	def movies_params
		params.require(:movie).permit(:title, :year, :director, :amazon_id, :show, :review)
	end

end