class Movie < ActiveRecord::Base

	belongs_to :director
	has_many :comments, as: :commentable, dependent: :destroy
	has_many :users, through: :comments
	accepts_nested_attributes_for :comments, :allow_destroy => true
	has_many :movie_genres
	has_many :genres, through: :movie_genres

	validates :title, :director_id, :photo_url, :genres, presence: true
	validates :review, presence: true, length: { minimum: 140 }
	validates :year, presence: true, numericality: { greater_than: 1900 }

	scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
	before_save :set_keywords

	def self.show(show)
		where(show: (show ? true : false))
	end

	def overal_score
		sum = Comment.where(commentable_type: Movie, commentable_id: self.id).sum :grade
		score = (sum.to_f/self.comments.count).round(1)
		sum == 0 ? '--' : score
	end

	protected
		def set_keywords
			self.keywords = [title, director.name].map(&:downcase).join(' ')
		end

end


