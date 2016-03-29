require 'rails_helper'

RSpec.describe Profile, type: :model do 
	it { should belong_to(:user) }

	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:surname) }
	it { should validate_length_of(:bio).is_at_least(140) }
end