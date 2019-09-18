Rails.application.routes.draw do
  resources :notes
  resources :digs
  resources :genres
  resources :crates
  resources :kits
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
