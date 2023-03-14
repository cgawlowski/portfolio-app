Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Pages routes
  root to: 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'web', to: 'pages#web'
  get 'woodwork', to: 'pages#woodwork'

  resources :projects

  match '*_missing_page', to: 'pages#not_found', via: :get


end
