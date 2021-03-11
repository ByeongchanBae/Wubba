Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :user_selections, only: [:new, :create, :edit, :update] do
    resources :tech_stack, only: [:show]
  end
  resources :user_selections, only: [:destroy]
  get 'dashboard', to: 'dashboards#show'
  resources :matches, only: [:show, :create] do
    resources :messages, only: :create
  end
  resources :posts do
    resources :comments, only: [ :index, :new, :create ]
  end
  resources :comments, only: [ :show, :edit, :update, :destroy ]
end

