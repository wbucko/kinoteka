class MoviesController < ApplicationController

	def index
		@movies = Movie.all
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
	end

	private
	def movies_params
		params.require(:movie).permit(:title, :year, :director, :amazon_id, :show, :review)
	end

end