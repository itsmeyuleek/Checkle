Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
  get 'home/index'
  get 'welcome/discover'

  resources :checks
  resources :users
  resources :attempts
  resources :topics
  resources :cards
  resources :homes
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
