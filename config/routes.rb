Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'screen#index'
  resource :users, only: [:new, :create]
  resource :rooms, only: [:index, :create, :new, :edit, :show, :update]
  devise_for :users
  # , controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
