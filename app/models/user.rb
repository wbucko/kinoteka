class User < ActiveRecord::Base
	has_secure_password
	before_save { self.email = email.downcase }
	validates :password, presence: true, length: { minimum: 5 }
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
                                uniqueness: { case_sensitive: false },
                                    format: { with: VALID_EMAIL_REGEX }
end