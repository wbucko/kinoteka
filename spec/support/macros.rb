def set_current_user(user=nil)
	session[:user_id] = (user || Fabricate(:user)).id 
end

def set_current_admin(admin=nil)
	session[:user_id] = (admin || Fabricate(:admin)).id 
end

def clear_current_user
	session[:user_id] = nil
end

def current_user
	User.find(session[:user_id])
end

def sign_in_as(user)
	visit root_path
	click_link "Zaloguj"

	fill_in "Email", with: user.email 
	fill_in "Hasło", with: user.password 

	click_button "Zaloguj"
	expect(page).to have_content("Zostałeś zalogowany.")
end