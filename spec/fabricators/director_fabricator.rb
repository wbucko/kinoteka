Fabricator(:director) do 
	name { Faker::Book.author }
	photo_url { Faker::Avatar.image }
	bio { Faker::Lorem.paragraph }
	birth '1965-04-04'
end