require 'rails_helper' 

RSpec.describe Like, type: :model do 
	it { should belong_to(:user) }
	it { should belong_to(:comment) }

	#it { should validate_uniqueness_of(:user_id).scoped_to(:comment) }
end