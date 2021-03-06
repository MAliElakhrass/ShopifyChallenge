Rails.application.routes.draw do
  root 'images#index'
  get '/signup', to: 'users#new'
  resources :images, :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end