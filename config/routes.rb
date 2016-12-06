Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users
  resources :offers, only: [:index, :edit, :update]
  resources :traits, only: [:index, :create]

end
