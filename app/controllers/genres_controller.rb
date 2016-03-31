class GenresController < ApplicationController
	before_action :admin_user, except: :show

	def new
		@genre = Genre.new
	end

	def create
		@genre = Genre.new(genre_params)
		if @genre.save
			flash[:success] = 'Gatunek został zapisany.'
			redirect_to root_path
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :new
		end
	end

	def show
		@genre = Genre.friendly.find(params[:id])
		@genre_movies = @genre.movies.paginate(page: params[:page], per_page: 5)
	end

	private
	def genre_params
		params.require(:genre).permit(:name)
	end

end