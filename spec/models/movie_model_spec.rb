require 'rails_helper' 

RSpec.describe Movie, type: :model do 
	it { should belong_to(:director) }
	it { should have_many(:comments) }
	it { should have_many(:users).through(:comments) }
	it { should have_many(:movie_genres)}
	it { should have_many(:genres).through(:movie_genres) }

	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:director_id) }
	it { should validate_presence_of(:photo_url) }
	it { should validate_presence_of(:genres) }
	it { should validate_length_of(:review).is_at_least(140) }
	it { should validate_numericality_of(:year).is_greater_than(1900) }
end