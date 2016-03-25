
require 'rails_helper'
require 'support/macros'
require 'support/shared_examples'

RSpec.describe UsersController, type: :controller do 
	let(:user) { Fabricate(:user) }
	let(:admin) { Fabricate(:admin) }

	describe 'GET #new' do 
		it 'returns a successful http request status code' do 
			get :new

			expect(response).to have_http_status(:success)
		end
	end

	describe 'POST #create' do 
		context 'a successful create' do 

			it 'saves the new user object' do 
				post :create, user: Fabricate.attributes_for(:user)

				expect(User.count).to eq(1)
			end

			it 'redirects to the users show profile action' do 
				post :create, user: Fabricate.attributes_for(:user)

				expect(response).to redirect_to new_user_profile_path(User.last)
			end

			it 'sets the success flash message' do 
				post :create, user: Fabricate.attributes_for(:user)

				expect(flash[:success]).to eq('Użytkownik został utworzony.')
			end
		end

		context 'an unsuccessful create' do 
			it 'does not save the user objcect with invalid input' do 
				post :create, user: Fabricate.attributes_for(:user, name: nil)

				expect(User.count).to eq(0)
			end

			it 'sets the failure flash message' do 
				post :create, user: Fabricate.attributes_for(:user, name: nil)

				expect(flash[:danger]).to eq('Coś poszło nie tak, spróbuj ponownie.')
			end
		end
	end

	describe 'GET #edit' do
		context 'guest user' do 
			it_behaves_like 'requires sign in' do 
				let(:action) { get :edit, id: user }
			end
		end

		context 'this user' do 
			before { set_current_user user }

			it 'sends a successful edit request' do 
				get :edit, id: user 

				expect(response).to have_http_status(:success)
			end 
		end

		context 'admin user' do 
			before { set_current_admin admin }

			it 'sends a successful edit request' do 
				get :edit, id: user 

				expect(response).to have_http_status(:success)
			end 	
		end
	end

	describe 'PUT #update' do 
		context 'guest user' do 
			it_behaves_like 'requires sign in' do 
				let(:action) { put :update, id: user }
			end
		end

		context 'this user' do 
			context 'a successful update' do 
				let(:john) { Fabricate(:user, name: 'John') }
				before { set_current_user john }

				it 'updates the modified user object' do 
					put :update, user: Fabricate.attributes_for(:user, name: 'Mike'), id: john.id

					expect(User.last.name).to eq('Mike')
					expect(User.last.name).not_to eq('John')
				end

				it 'sets successful flash message' do 
					put :update, user: Fabricate.attributes_for(:user, name: 'Mike'), id: john.id

					expect(flash[:success]).to eq('Użytkownik został zapisany.')
				end

				it 'redirects to the show action' do 
					put :update, user: Fabricate.attributes_for(:user, name: 'Mike'), id: john.id

					expect(response).to redirect_to root_path
				end
			end

			context 'an unsuccessful update' do 
				let(:john) { Fabricate(:user, name: 'John') }
				before { set_current_user john }

				it 'does not update the user object with invalid input' do 
					put :update, user: Fabricate.attributes_for(:user, name: nil), id: john.id

					expect(User.last.name).to eq('John')
				end

				it 'sets successful flash message' do 
					put :update, user: Fabricate.attributes_for(:user, name: nil), id: john.id

					expect(flash[:danger]).to eq('Coś poszło nie tak, spróbuj ponownie.')
				end
			end
		end

		context 'admin user' do 
			context 'a successful update' do 
				let(:john) { Fabricate(:user, name: 'John') }
				before { set_current_admin admin }

				it 'updates the modified user object' do 
					put :update, user: Fabricate.attributes_for(:user, name: 'Mike'), id: john.id

					expect(User.last.name).to eq('Mike')
					expect(User.last.name).not_to eq('John')
				end

				it 'sets successful flash message' do 
					put :update, user: Fabricate.attributes_for(:user, name: 'Mike'), id: john.id

					expect(flash[:success]).to eq('Użytkownik został zapisany.')
				end

				it 'redirects to the show action' do 
					put :update, user: Fabricate.attributes_for(:user, name: 'Mike'), id: john.id

					expect(response).to redirect_to root_path
				end
			end

			context 'an unsuccessful update' do 
				let(:john) { Fabricate(:user, name: 'John') }
				before { set_current_admin admin }

				it 'does not update the user object with invalid input' do 
					put :update, user: Fabricate.attributes_for(:user, name: nil), id: john.id

					expect(User.last.name).to eq('John')
				end

				it 'sets successful flash message' do 
					put :update, user: Fabricate.attributes_for(:user, name: nil), id: john.id

					expect(flash[:danger]).to eq('Coś poszło nie tak, spróbuj ponownie.')
				end
			end
		end
	end

	describe 'DELETE #destroy' do 
		context 'non admin user' do 
			it_behaves_like 'requires sign in' do 
				let(:action) { delete :destroy, id: user }
			end
		end

		context 'admin user' do 
			before { set_current_admin admin }

			it 'deletes the user with the given id' do 
				delete :destroy, id: user 

				expect(User.count).to eq(1)
			end

			it 'set the successful flash message' do 
				delete :destroy, id: user 

				expect(flash[:success]).to eq('Użytkownik został usunięty.')
			end

			it 'redirects to the index action' do 
				delete :destroy, id: user 

				expect(response).to redirect_to root_path
			end
		end
	end
end
