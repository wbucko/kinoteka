class Profile < ActiveRecord::Base
	belongs_to :user

	validates :name, :surname, presence: true
	validates :bio, length: { minimum: 140 }
end
