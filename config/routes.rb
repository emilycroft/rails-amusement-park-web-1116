Rails.application.routes.draw do
  get '/', to: 'users#index', as: 'root'
  get '/users/new', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#create', as: 'login'
  
  resources :attractions
  resources :users
  resources :sessions
  resources :rides
end
