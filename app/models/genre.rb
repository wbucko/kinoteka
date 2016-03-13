class Genre < ActiveRecord::Base
	has_many :movie_genres
	has_many :movies, through: :movie_genres
	
	validates :name, presence: true

	def to_s
		"#{name}"
	end
	
end
