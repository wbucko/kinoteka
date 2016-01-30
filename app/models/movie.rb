class Movie < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :users, through: :comments
	accepts_nested_attributes_for :comments, :allow_destroy => true

	validates :title, :year, :director, :amazon_id, presence: true
	validates :review, presence: true, length: { minimum: 140 }

	scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
	before_save :set_keywords

	def self.show(show)
		where(show: (show ? true : false))
	end

	protected
		def set_keywords
			self.keywords = [title, director].map(&:downcase).join(' ')
		end

end


