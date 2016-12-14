Rails.application.routes.draw do
  get 'errors/not_found'

  get 'errors/internal_server_error'

  authenticated do
    root to: 'offers#index', as: :authenticated
  end
  root to: 'pages#home'
  get 'pages/privacy'
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: "registrations"  }
  resources :offers, only: [:index, :edit, :update, :show]
  resources :favorites, only: [:index], to: 'offers#favorites'
  resources :user_traits, only: [:index, :update]
  resources :profiles, only: [:show]  do
    delete "delete/:id_trait" , to: "user_traits#destroy", as: "del_trait"
  end

  # get :hellobug, to: 'pages#hellobug'
  # match "/404", :to => "errors#not_found", :via => :all
  # match "/500", :to => "errors#internal_server_error", :via => :all
  get "/404", :to => "errors#not_found"
  get "/422", :to => "errors#unacceptable"
  get "/500", :to => "errors#internal_error"



end
