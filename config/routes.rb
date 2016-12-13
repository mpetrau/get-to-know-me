Rails.application.routes.draw do
  # authenticated do
  #   root to: 'offers#index', as: :authenticated
  # end
  root 'pages#home'
  get 'pages/privacy'

  # get :users, as: :edit_user_registration, controller: :registrations, action: :edit
  # patch :users, as: "", controller: :registrations, action: :update

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks'  }
  resources :offers, only: [:index, :edit, :update, :show]
  resources :favorites, only: [:index], to: 'offers#favorites'
  resources :user_traits, only: [:index, :update]
  resources :profiles, only: [:show]  do
    delete "delete/:id_trait" , to: "user_traits#destroy", as: "del_trait"
  end




end
