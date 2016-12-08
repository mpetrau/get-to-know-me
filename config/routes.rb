Rails.application.routes.draw do
  authenticated do
    root to: 'offers#index', as: :authenticated
  end
  root to: 'pages#home'
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: "registrations"  }
  resources :offers, only: [:index, :edit, :update, :show]
  resources :favorites, only: [:index], to: 'offers#favorites'
  resources :user_traits, only: [:index, :create]

end
