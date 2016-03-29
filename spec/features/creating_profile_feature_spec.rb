require 'rails_helper' 
require 'support/macros'

RSpec.feature "Creating users profile" do 
	let(:user) { Fabricate(:user) }
	before { sign_in_as user}

	scenario "with valid data" do 
		visit new_user_profile_path(user)

		fill_in :profile_name, with: 'John'
		fill_in :profile_surname, with: 'Doe'
		fill_in :profile_favorite, with: 'Black Hawk Down'
		fill_in :profile_bio, with: 'Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies. Curabitur et ligula. Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim. Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec malesuada fames ac turpis velit, '
		click_button 'Zapisz'

		expect(page).to have_content("Profil utworzony!")
	end

	scenario "with invalid data" do 
		visit new_user_profile_path(user)

		fill_in :profile_name, with: 'John'
		fill_in :profile_surname, with: 'Doe'
		fill_in :profile_favorite, with: 'Black Hawk Down'
		fill_in :profile_bio, with: ''
		click_button 'Zapisz'

		expect(page).to have_content('Poprawnie uzupełnij wszystkie pola!')
	end
end