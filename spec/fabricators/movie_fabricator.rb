Fabricator(:movie) do 
	title { Faker::Book.title } 
	year 2008
	photo_url { Faker::Avatar.image }
	show { Faker::Boolean.boolean }
	review { Faker::Hipster.paragraph(5) }
	director
end

