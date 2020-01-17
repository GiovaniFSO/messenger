Rails.application.routes.draw do
  devise_for :users
  resources :contacts, only: %i(index new create destroy)
  resources :chats, only: %i(index show)
  root to: 'home#index'
end
