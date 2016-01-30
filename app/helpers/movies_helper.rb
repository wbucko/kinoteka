module MoviesHelper

	def image_from_amazon(amazon_id, klass=nil)
		image_tag "http://images.amazon.com/images/P/#{amazon_id}.01.ZTZZZZZZ.jpg", class: klass
	end

	def overal_score(movie)
		sum = Comment.where(movie_id: movie.id).sum :movie_grade
		score = (sum.to_f/movie.comments.count).round(1)
		sum == 0 ? '--' : score
	end
	
end
