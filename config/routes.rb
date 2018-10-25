Rails.application.routes.draw do
  devise_for :users
  resources :checks
  resources :users
  resources :attempts
  resources :topics
  resources :cards
  root 'topics#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
