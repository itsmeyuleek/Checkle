Rails.application.routes.draw do
  resources :checks
  resources :users
  resources :attempts
  resources :topics
  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
