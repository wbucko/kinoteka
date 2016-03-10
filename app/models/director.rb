class Director < ActiveRecord::Base

	has_many :movies
	has_many :comments, as: :commentable, dependent: :destroy
	has_many :users, through: :comments
	accepts_nested_attributes_for :comments, :allow_destroy => true

	validates :name, :photo_url, :birth, :bio, presence: true

	def director_score
		sum = Comment.where(commentable_type: Director, commentable_id: self.id).sum :grade
		score = (sum.to_f/self.comments.count).round(1)
		sum == 0 ? '--' : score
	end

end
