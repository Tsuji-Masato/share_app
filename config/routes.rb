Rails.application.routes.draw do
  namespace :users do
    resources :account,  only: :index
    resources :profile,  only: [:edit, :update]
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users
  root to: "top#index"
  resources :users
end
