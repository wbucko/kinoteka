Fabricator(:profile) do 
	name { Faker::Name.first_name }
	surname { Faker::Name.last_name }
	favorite { Faker::Book.title }
	bio { Faker::Hipster.paragraph(5) }
end