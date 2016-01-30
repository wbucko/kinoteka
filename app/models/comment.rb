class Comment < ActiveRecord::Base
	belongs_to :movie
	belongs_to :user
	validates_uniqueness_of :movie, scope: :user
	validates :content, presence: true, length: { minimum: 40 }
end