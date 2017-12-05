Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'screen#index'
  resources :users, only: [:new, :create]
  resources :rooms, only: [:index, :create, :new, :edit, :show, :update] do
		resources :bedrooms, only: [:create, :edit, :update]
		resources :bathrooms, only: [:create, :edit, :update]
		resources :locations, only: [:create, :edit, :update]
    resources :locationmaps, only: [:create, :edit, :update]
    resources :amenities, only: [:create, :edit, :update]
    resources :spaces, only: [:create, :edit, :update]
	end
  devise_for :users
  # , controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
