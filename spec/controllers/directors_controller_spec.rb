require 'rails_helper'
require 'support/macros'
require 'support/shared_examples'

RSpec.describe DirectorsController, type: :controller do 
	let(:director) { Fabricate(:director) }
	let(:admin) { Fabricate(:admin) }

	before { set_current_admin admin }

	describe 'GET #index' do 
		it 'returns a successful http status code' do 
			get :index

			expect(response).to have_http_status(:success)
		end
	end

	describe 'GET #new' do 
		context 'regular users' do 
			it_behaves_like "requires sign in" do 
				let(:action) { get :new }
			end
		end

		context 'admin users' do 
			it 'returns a successful http status code' do 
				get :new 

				expect(response).to have_http_status(:success)
			end
		end
	end

	describe 'POST #create' do 
		context 'regular users' do 
			it_behaves_like "requires sign in" do 
				let(:action) { post :create, director: Fabricate.attributes_for(:director) }
			end
		end

		context 'admin users' do 
			context 'a successful create' do 
				before do 
					post :create, director: Fabricate.attributes_for(:director)
				end

				it 'saves new director object' do  
					#require 'pry'; binding.pry
					expect(Director.count).to eq(1)
				end

				it 'redirects to directors path' do 
					expect(response).to redirect_to directors_path
				end

				it 'sets a successful flash message' do 
					expect(flash[:success]).to eq('Reżyser został zapisany.')
				end
			end

			context 'an unsuccesful create' do 

				it 'does not save object in database' do 
					post :create, director: Fabricate.attributes_for(:director, bio: nil)

					expect(Director.count).to eq(0)
				end

				it 'set the danger flash message' do 
					post :create, director: Fabricate.attributes_for(:director, bio: nil)

					expect(flash[:danger]).to eq('Coś poszło nie tak, spróbuj ponownie.')
				end
			end
		end
	end

	describe "GET #edit" do

		context 'non admin users' do 
			it_behaves_like "requires sign in" do 
				let(:action) { get :edit, id: director }
			end
		end

		context 'admin users' do 
			it 'returns a successful http status code' do 
				get :edit, id: director 

				expect(response).to have_http_status(:success)
			end
		end
	end

	describe "PUT #update" do 
		let(:martin) { Fabricate(:director, name: 'Martin') }

		context 'non admin user' do 
			it_behaves_like "requires sign in" do 
				let(:action) { get :edit, id: director }
			end
		end

		context 'admin users' do 
			context 'successful update' do 
				it 'updates the modified director object' do 
					put :update, director: Fabricate.attributes_for(:director, name: 'Steve'), id: martin.id

					expect(Director.last.name).to eq('Steve')
					expect(Director.last.name).not_to eq('Martin')
				end

				it 'sets successful flash message' do 
					put :update, director: Fabricate.attributes_for(:director, name: 'Steve'), id: martin.id

					expect(flash[:success]).to eq('Reżyser został zapisany.')
				end

				it 'redirects to the show action' do 
					put :update, director: Fabricate.attributes_for(:director, name: 'Steve'), id: martin.id

					expect(response).to redirect_to(director_path(Director.last))
				end
			end

			context 'an unsuccessful update' do 
				it 'does not update the author object with invalid input' do 
					put :update, director: Fabricate.attributes_for(:director, name: nil), id: martin.id

					expect(Director.last.name).to eq('Martin')
				end

				it 'sets successful flash message' do 
					put :update, director: Fabricate.attributes_for(:director, name: nil), id: martin.id

					expect(flash[:danger]).to eq('Coś poszło nie tak, spróbuj ponownie.')
				end
			end
		end
	end

	describe "DELETE #destroy" do 
		context "non admin users" do 
			it_behaves_like 'requires sign in' do 
				let(:action) { delete :destroy, id: director }
			end
		end

		context 'admin users' do 
			before { delete :destroy, id: director }

			it 'destroys director with given id' do 
				expect(Director.count).to eq(0)
			end

			it 'redirects to directors path' do 
				expect(response).to redirect_to directors_path 
			end

			it 'sets the successful flash message' do 
				expect(flash[:success]).to eq('Reżyser został usunięty.')
			end
		end
	end

	describe "GET #show" do 
		it 'returns success http status code' do 
			clear_current_user
			get :show, id: director 

			expect(response).to have_http_status(:success)
		end
	end
end