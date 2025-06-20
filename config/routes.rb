Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # get 'notifications/test_create', to: 'notifications#test_create'

  get '/notifications', to: 'notifications#index', as: :notifications

  get '/checkout', to: 'orders#new', as: :new_order
  post '/checkout', to: 'orders#create', as: :orders


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get '/my-account', to: 'accounts#show', as: :my_account
  get '/my-account/edit', to: 'accounts#edit', as: :edit_my_account
  put '/my-account', to: 'accounts#update'
  patch '/my-account', to: 'accounts#update'


  resources :farmers do
    resources :products, only: [:index,:show]
  end
  
  resource :cart, only: [:show]

  # resources :products, only:[:show]

  resources :cart_items, only: [:create, :update, :destroy]

  resources :orders, only: [:new, :create, :show]
end
