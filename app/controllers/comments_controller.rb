class CommentsController < ApplicationController
	before_action :find_comment, only: [:edit, :update, :like, :destroy]
	before_action :logged_user
	before_action :load_commentable

	def new
		@comment = @commentable.comments.new
	end

	def create
		@comment = @commentable.comments.new(comment_params)
		@comment.user= current_user
		if @comment.save
			flash[:success] = 'Dodano komentarz.'
			redirect_to @commentable
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :new
		end
	end

	def edit
	end

	def update
		if @comment.update(comment_params)
			flash[:success] = 'Komentarz został zapisany.'
			redirect_to @commentable
		else
			flash[:danger] = 'Coś poszło nie tak, spróbuj ponownie.'
			render :edit
		end
	end

	def like
		like = Like.create(like: params[:like], user: current_user, comment: @comment)
		if like.valid?
			flash[:success] = "Wybór został zapisany."
			redirect_to :back
		else
			flash[:danger] = "Możesz wybrać tylko raz."
			redirect_to :back
		end
  end

	def destroy
		@comment.destroy
		flash[:danger] = 'Komentarz został usunięty.'
		redirect_to :back
	end

	private
	def comment_params
		params.require(:comment).permit(:content, :grade)
	end

	def find_comment
		@comment = Comment.find(params[:id])
	end

	def load_commentable
		resource, id = request.path.split('/')[1, 2]
		@commentable = resource.singularize.classify.constantize.find(id)
	end

end

