class Comment < ActiveRecord::Base
	belongs_to :commentable, polymorphic: true
	belongs_to :user

	validates :user, uniqueness: { scope: [ :commentable_type, :commentable_id ] }
	validates :content, presence: true, length: { minimum: 40 }

end