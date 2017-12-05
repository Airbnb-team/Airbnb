Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'screen#index'
  devise_for :users
  resources :users, only: [:new, :create]
  resources :rooms
  # , controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
