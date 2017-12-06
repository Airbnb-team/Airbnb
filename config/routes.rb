Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'screen#index'
  resources :users, only: [:new, :create]
  resources :rooms
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
