module MoviesHelper

	def image_from_amazon(amazon_id, klass=nil)
		image_tag "http://images.amazon.com/images/P/#{amazon_id}.01.ZTZZZZZZ.jpg", class: klass
	end
	
end
