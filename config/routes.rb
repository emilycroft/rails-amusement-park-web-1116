Rails.application.routes.draw do
  get '/', to: 'users#index', as: 'root'
  get '/users/new', to: 'users#new', as: 'signup'
  get '/users/:id', to: 'users#show', as: 'user'


  get '/signin', to: 'sessions#new'
  post '/sessions/create', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/attractions/:id', to: 'attractions#custom'


  resources :attractions
  resources :users
  resources :rides
end
