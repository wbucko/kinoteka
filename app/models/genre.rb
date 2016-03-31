class Genre < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	has_many :movie_genres
	has_many :movies, through: :movie_genres
	
	validates :name, presence: true

	def to_s
		"#{name}"
	end
	
	def should_generate_new_friendly_id?
		slug.blank? || name_changed?
	end
end
