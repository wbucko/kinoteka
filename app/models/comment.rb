class Comment < ActiveRecord::Base
	belongs_to :commentable, polymorphic: true
	belongs_to :user
	has_many :likes, dependent: :destroy

	validates :user, uniqueness: { scope: [ :commentable_type, :commentable_id ] }
	validates :content, presence: true

	def thumbs_up_total
	  self.likes.where(like: true).size 
	end

	def thumbs_down_total
	  self.likes.where(like: false).size
	end

end