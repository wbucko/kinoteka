require 'rails_helper'

RSpec.describe User, type: :model do 
	it { should have_one(:profile).dependent(:destroy) }
	it { should have_many(:comments)}
	it { should have_many(:movies).through(:comments) }
	it { should have_many(:directors).through(:comments) }
	it { should have_many(:likes) }

	it { should validate_presence_of(:name) }
	it { should validate_length_of(:password).is_at_least(5) }
	it { should validate_length_of(:email).is_at_most(105) }
	it { should validate_uniqueness_of(:email).case_insensitive }
	it { should have_secure_password }
end
