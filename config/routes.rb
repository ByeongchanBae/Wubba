Rails.application.routes.draw do
  get 'notifications/index'
  devise_for :users
  root to: 'pages#home'
  resources :user_selections, only: [:new, :create, :edit, :update] do
    resources :tech_stack, only: [:show]
  end
  resources :user_selections, only: [:destroy]

  get 'dashboard', to: 'dashboards#show'
  post "/approve/:id" => "matches#approve", as: :approve_user
  post "/decline/:id" => "matches#decline", as: :decline_user

  resources :matches, only: [:show, :create, :index] do
    resources :match_messages, only: :create
  end
  resources :posts do
    resources :comments, only: [ :index, :new, :create ]
  end
  resources :comments, only: [ :show, :edit, :update, :destroy ]
  resources :notifications, only: [:index]
end

