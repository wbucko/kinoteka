class Movie < ActiveRecord::Base
	validates :title, :year, :director, :amazon_id, presence: true
	validates :review, presence: true, length: { minimum: 140 }

end