class Comment < ActiveRecord::Base
	belongs_to :commentable, polymorphic: true, counter_cache: true
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

	# def request_path(resource, id)
	# 	if resource == 'directors' 
	# 		@commentable = resource.singularize.classify.constantize.where(slug: id)
	# 	else
	# 		@commentable = resource.singularize.classify.constantize.find(id)
	# 	end
	# end

end