Rails.application.routes.draw do
  devise_for :users
    resources :my_account
  get 'my_account', to: 'my_account#index'

  # get 'sign_up', to: 'registrations#new'
  # post 'sign_up', to: 'registrations#create'

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
