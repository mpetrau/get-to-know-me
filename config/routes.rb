Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :offers, only: [:index, :edit, :update, :show]
  resources :user_traits, only: [:index, :create]

end
