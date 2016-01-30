Rails.application.routes.draw do

  root 'pages#index'
  resources :movies do
    resources :comments, except: [:create, :update, :index]
  end

  post '/movies/:movie_id/comments/new' => 'comments#create'
  patch '/movies/:movie_id/comments/:id' => 'comments#update', as: 'update_movie_comment'

  resources :users, except: [:index]
  delete '/users/:id' => 'users#destroy', as: 'destroy_user'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/ranking/movies' => 'pages#movies', as: 'movies_ranking'
  get '/ranking/shows' => 'pages#shows', as: 'shows_ranking'

end
