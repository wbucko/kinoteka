class CommentsController < ApplicationController

	def index
		@movie = Movie.find(params[:id])
		@comments = @movie.comments
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			flash[:succes] = 'Dodano komentarz.'
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
		end
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		flash[:danger] = 'Komentarz został usunięty.'
	end

	private
	def comment_params
		params.require(:comment).permit(:content, :movie_grade)
	end

end