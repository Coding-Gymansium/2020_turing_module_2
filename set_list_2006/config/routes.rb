Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  #Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  #Users
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/profile', to: 'users#show'

  #Songs
  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'

  #Cart
  patch '/cart/:song_id', to: 'cart#update'

  #Artists
  get '/artists', to: 'artists#index'
  get '/artists/new', to: 'artists#new'
  patch 'artists/:id', to: 'artists#update'
  get 'artists/:id/edit', to: 'artists#edit', as: :edit_artist
  get '/artists/:id', to: 'artists#show'
  post '/artists', to: 'artists#create'

  #Artists Songs
  get '/artists/:artist_id/songs/new', to: 'songs#new'
  post '/artists/:artist_id/songs', to: 'songs#create'
end
