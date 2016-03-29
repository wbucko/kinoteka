require 'rails_helper'
require 'support/macros'
require 'support/shared_examples'

RSpec.describe MoviesController, type: :controller do 
	let(:genre) { Fabricate(:genre) }
	let(:movie) { Fabricate(:movie, genre_ids: [genre.id]) }
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
				let(:action) { post :create, movie: Fabricate.attributes_for(:movie) }
			end
		end

		context 'admin users' do 
			context 'a successful create' do 
				before do 
					post :create, movie: Fabricate.attributes_for(:movie, genre_ids: [genre.id])
				end

				it 'saves new movie object' do  
					#require 'pry'; binding.pry
					expect(Movie.count).to eq(1)
				end

				it 'redirects to movies path' do 
					expect(response).to redirect_to root_path
				end

				it 'sets a successful flash message' do 
					expect(flash[:success]).to eq('Film został zapisany')
				end
			end

			context 'an unsuccesful create' do 

				it 'does not save object in database' do 
					post :create, movie: Fabricate.attributes_for(:movie, bio: nil)

					expect(Movie.count).to eq(0)
				end

				it 'set the danger flash message' do 
					post :create, movie: Fabricate.attributes_for(:movie, bio: nil)

					expect(flash[:danger]).to eq('Coś poszło nie tak, spróbuj ponownie.')
				end
			end
		end
	end

	describe "GET #edit" do

		context 'non admin users' do 
			it_behaves_like "requires sign in" do 
				let(:action) { get :edit, id: movie }
			end
		end

		context 'admin users' do 
			it 'returns a successful http status code' do 
				get :edit, id: movie 

				expect(response).to have_http_status(:success)
			end
		end
	end

	describe "PUT #update" do 
		let(:martin) { Fabricate(:movie, title: 'Martin', genre_ids: [genre.id]) }

		context 'non admin user' do 
			it_behaves_like "requires sign in" do 
				let(:action) { get :edit, id: movie }
			end
		end

		context 'admin users' do 
			context 'successful update' do 
				before do 
					put :update, movie: Fabricate.attributes_for(:movie, title: 'Steve'), id: martin.id
				end
				it 'updates the modified movie object' do
					expect(Movie.last.title).to eq('Steve')
					expect(Movie.last.title).not_to eq('Martin')
				end

				it 'sets successful flash message' do 
					expect(flash[:success]).to eq('Film został zapisany')
				end

				it 'redirects to the show action' do 
					expect(response).to redirect_to(movie_path(Movie.last))
				end
			end

			context 'an unsuccessful update' do 
				it 'does not update the author object with invalid input' do 
					put :update, movie: Fabricate.attributes_for(:movie, title: nil), id: martin.id

					expect(Movie.last.title).to eq('Martin')
				end

				it 'sets successful flash message' do 
					put :update, movie: Fabricate.attributes_for(:movie, title: nil), id: martin.id

					expect(flash[:danger]).to eq('Coś poszło nie tak, spróbuj ponownie.')
				end
			end
		end
	end

	describe "DELETE #destroy" do 
		context "non admin users" do 
			it_behaves_like 'requires sign in' do 
				let(:action) { delete :destroy, id: movie }
			end
		end

		context 'admin users' do 
			before { delete :destroy, id: movie }

			it 'destroys movie with given id' do 
				expect(Movie.count).to eq(0)
			end

			it 'redirects to movies path' do 
				expect(response).to redirect_to movies_path 
			end

			it 'sets the successful flash message' do 
				expect(flash[:success]).to eq('Film został usunięty')
			end
		end
	end

	describe "GET #show" do 
		it 'returns success http status code' do 
			clear_current_user
			get :show, id: movie 

			expect(response).to have_http_status(:success)
		end
	end
end