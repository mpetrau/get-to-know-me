Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users
  resource :users do
    resources :deals, controller: 'user_deals', :only => [:index, :feedback]
    resources :characteristics, controller: 'user_characteristics', :only => [:index, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
