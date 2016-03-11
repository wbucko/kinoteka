class Contact < ActiveRecord::Base
	
	validates :name, :email, :body, presence: true

end
