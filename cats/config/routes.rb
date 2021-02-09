# Rails.application.routes.draw do
#   get '/cats', to: 'cats#index'
#   get '/cats/:id', to: 'cats#show'
#   patch '/cats', to: 'cats#update'
#   get '/cats/edit', to: 'cats#edit'
#   delete '/cats/:id', to: 'cats#destroy'
# end

##======== Scope
# Rails.application.routes.draw do
#   get '/cats', to: 'cats#index'
#   get '/cats/:id', to: 'cats#show'
#   scope :admin do
#     patch '/cats', to: 'cats#update'
#     get '/cats/edit', to: 'cats#edit'
#     delete '/cats/:id', to: 'cats#destroy'
#   end
# end

##======== Scope & Module
# Rails.application.routes.draw do
#   get '/cats', to: 'cats#index'
#   get '/cats/:id', to: 'cats#show'
#   scope :admin, module: :admin do
#     patch '/cats', to: 'cats#update'
#     get '/cats/edit', to: 'cats#edit'
#     delete '/cats/:id', to: 'cats#destroy'
#   end
# end

##======== Scope & Module & As
# Rails.application.routes.draw do
#   get '/cats', to: 'cats#index'
#   get '/cats/:id', to: 'cats#show'
#   scope :admin, module: :admin, as: :admin do
#     patch '/cats', to: 'cats#update'
#     get '/cats/edit', to: 'cats#edit'
#     delete '/cats/:id', to: 'cats#destroy'
#   end
# end

##======== Namespace
Rails.application.routes.draw do
  get '/cats', to: 'cats#index'
  get '/cats/:id', to: 'cats#show'
  namespace :admin do
    patch '/cats', to: 'cats#update'
    get '/cats/edit', to: 'cats#edit'
    delete '/cats/:id', to: 'cats#destroy'
  end
end
