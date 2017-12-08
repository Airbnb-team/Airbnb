Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'screen#index'
  resources :users
  resources :messages
  resources :favorites, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  resources :rooms, only: [:index, :new, :create, :edit, :show, :update] do
    collection do
      get 'continue'
    end
    member do
      get 'edit_price'
    end
  end
	resources :bedrooms, only: [:create, :edit, :update]
	resources :bathrooms, only: [:create, :edit, :update]
	resources :locations, only: [:create, :edit, :update]
  resources :locationmaps, only: [:create, :edit, :update]
  resources :amenities, only: [:create, :edit, :update]
  resources :spaces, only: [:create, :edit, :update]
  resources :photos, only: [:create, :edit, :update]
end
