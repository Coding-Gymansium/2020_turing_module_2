Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #=== Studios
  get '/studios', to: 'studios#index'

  #==== Movies
  get '/movies/:id', to: 'movies#show'

end
