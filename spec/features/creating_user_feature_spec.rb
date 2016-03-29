require 'rails_helper' 

RSpec.feature "Creating Users" do 
	scenario "with valid data" do 
		visit root_path

		click_link "Zarejestruj się!"
		fill_in :user_name, with: 'John'
		fill_in :user_email, with: 'john@example.com'
		fill_in :user_password, with: 'password'
		click_button 'Zapisz'

		expect(page).to have_content('Utwórz profil użytkownika.')
	end
	scenario "with invalid data" do 
		visit root_path

		click_link "Zarejestruj się!"
		fill_in :user_name, with: ''
		fill_in :user_email, with: 'e.com'
		fill_in :user_password, with: 'password'
		click_button 'Zapisz'

		expect(page).to have_content("Coś poszło nie tak, spróbuj ponownie.")
	end
end