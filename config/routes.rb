Rails.application.routes.draw do
  get '/', to: 'users#index', as: 'root'
  get '/users/new', to: 'users#new', as: 'signup'
<<<<<<< HEAD
  get '/users/:id', to: 'users#show', as: 'user'


  get '/signin', to: 'sessions#new'
  post '/sessions/create', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/attractions/:id', to: 'attractions#custom'


=======
  
  get '/login', to: 'sessions#create', as: 'login'
  get '/signin', to: 'sessions#new', as: "signin"
  
>>>>>>> c98a09da926c4e6749935cd9db2f2616149efd9f
  resources :attractions
  resources :users
  resources :rides
end
