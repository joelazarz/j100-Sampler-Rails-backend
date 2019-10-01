Rails.application.routes.draw do
  resources :notes
  resources :digs
  resources :genres
  resources :crates
  resources :kits
  resources :users

  patch '/users', to: 'users#update'

  post 'signup', to: 'users#create'
  post 'login', to: 'auth#login'
  get '/autologin', to: 'auth#autologin'
end
