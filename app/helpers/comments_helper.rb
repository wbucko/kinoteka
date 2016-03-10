module CommentsHelper

	def new_or_edit
		if @comment.new_record? 
			params[:movie_id] ? new_movie_comment_path : new_director_comment_path
		else
			params[:movie_id] ? edit_movie_comment_path : edit_director_comment_path
		end
	end

	def movie_or_director
		params[:movie_id] ? @commentable.title : @commentable.name
	end
	
end