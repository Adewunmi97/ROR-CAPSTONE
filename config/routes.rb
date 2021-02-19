Rails.application.routes.draw do
  devise_for :users
  resources :users

  # get 'sign_up', to: 'registrations#new'
  # post 'sign_up', to: 'registrations#create'
  resources :my_account

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
