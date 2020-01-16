Rails.application.routes.draw do
  devise_for :users
  resources :contacts, only: %i(index new create destroy)
  root to: 'home#index'
end
