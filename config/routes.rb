Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :user_selections, only: [:new, :create, :edit, :update] do
    resources :tech_stack, only: [:show]
  end
  resources :user_selections, only: [:destroy]
  get 'dashboard', to: 'dashboards#show'

  resources :posts do
    resources :comments, only: [ :index, :new, :create ]
  end
  resources :comments, only: [ :show, :edit, :update, :destroy ]
end

#  post nested in user (shallow edit)

#  comments nested in post (shallow edit) (advanced routing )
