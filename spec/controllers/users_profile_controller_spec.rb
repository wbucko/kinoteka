require 'rails_helper'
require 'support/macros'
require 'support/shared_examples'

RSpec.describe ProfilesController, type: :controller do 
	let(:user) { Fabricate(:user) }
	let(:admin) { Fabricate(:admin) }
	let(:profile) { Fabricate(:profile, user_id: user.id) }

	describe "GET #new" do 
		context 'non admin users' do 
			it_behaves_like "requires sign in" do 
				let(:action) { get :new, user_id: user.id }
			end
		end

		context 'owner or admin user' do 
			before { set_current_user user }

			it "returns successful http status code" do 
				get :new, user_id: user.id 

				expect(response).to have_http_status(:success)
			end
		end 
	end 

	describe "POST #create" do 
		context 'non admin or owner user' do 
			it_behaves_like "requires sign in" do 
				let(:action) { post :create, profile: Fabricate.attributes_for(:profile), user_id: user }
			end
		end

		context 'owner user' do 
			context 'a successful create' do 
				before do 
					set_current_user user
					post :create, profile: Fabricate.attributes_for(:profile), user_id: user.id
				end

				it 'saves the new users profile' do 
					expect(Profile.count).to eq(1)
				end

				it 'redirects to the users show profile action' do 
					expect(response).to redirect_to user_profile_path(User.last)
				end

				it 'sets the success flash message' do 
					expect(flash[:success]).to eq('Profil utworzony!')
				end
			end

			context 'an unsuccessful create' do 
				before do 
					set_current_user user
					post :create, profile: Fabricate.attributes_for(:profile, bio: nil), user_id: user.id
				end

				it 'does not save the profile objcect with invalid input' do 
					expect(User.last.profile).not_to be_present
				end

				it 'sets the failure flash message' do 
					expect(flash[:danger]).to eq('Poprawnie uzupełnij wszystkie pola!')
				end
			end
		end
	end

	describe "GET #show" do 
		it "returns successful http status code" do 
			get :show, id: profile.id, user_id: user.id 

			expect(response).to have_http_status(:success)
		end
	end

	describe "GET #edit" do 
		before { set_current_admin admin }

		context 'regular user' do 
			it_behaves_like "requires sign in" do 
				let(:action) { get :edit, user_id: user.id, id: profile }
			end
		end

		context 'admin user or owner' do 
			it 'returns a successful http status code' do 
				get :edit, id: profile, user_id: user

				expect(response).to have_http_status(:success)
			end
		end
	end

	describe 'PUT #update' do 
		context 'unauthorized user' do 
			it_behaves_like 'requires sign in' do
				let(:action) { put :update, id: profile, user_id: user, profile: Fabricate.attributes_for(:profile) }
			end
		end

		context 'authorized users' do 
			before do 
				set_current_user user
				put :update, id: profile, user_id: user, profile: Fabricate.attributes_for(:profile, name: 'Profil')
			end

			it 'updates users profile' do 
				expect(Profile.last.name).to eq('Profil')
			end

			it 'redirects to user profile page' do 
				expect(response).to redirect_to user_profile_path(User.last)
			end

			it 'renders a success flash message' do 
				expect(flash[:success]).to eq('Profil zaktualizowany!')
			end
		end

		context 'authorized users' do 
			before do 
				set_current_user user
				put :update, id: profile, user_id: user, profile: Fabricate.attributes_for(:profile, name: nil)
			end

			it 'updates users profile' do 
				expect(Profile.last.name).to eq(profile.name)
			end

			it 'renders a danger flash message' do 
				expect(flash[:danger]).to eq('Poprawnie uzupełnij wszystkie pola!')
			end
		end		
	end
end