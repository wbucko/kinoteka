Rails.application.routes.draw do

  resources :directors, :movies do 
    resources :comments, except: :index
  end

  resources :users, except: [:index] do 
    resource :profile
  end
  
  delete '/users/:id' => 'users#destroy', as: 'destroy_user'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/ranking/movies' => 'pages#movies', as: 'movies_ranking'
  get '/ranking/shows' => 'pages#shows', as: 'shows_ranking'

  root 'pages#index'

end
