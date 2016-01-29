class CommentsController < ApplicationController

	def index
	end

	def new
		@movie = Movie.find(params[:movie_id])
		@comment = Comment.new
	end

	def create
		@movie = Movie.find(params[:movie_id])
		@comment = @movie.comments.new(comment_params)
		@comment.user = current_user
		if @comment.save
			flash[:success] = 'Dodano komentarz.'
			redirect_to movie_path(@movie)
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :new
		end
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update(comment_params)
			flash[:success] = 'Komentarz został zapisany'
			redirect_to movie_path(@comment.movie)
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :edit
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		flash[:danger] = 'Komentarz został usunięty.'
		redirect_to :back
	end

	private
	def comment_params
		params.require(:comment).permit(:content, :movie_grade)
	end

end

