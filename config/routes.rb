Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'rooms#toppage'
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  patch   'users/:id'  => 'users#update'
  resources :users
  resources :groups do
    resources :messages
  end
  resources :messages do
    collection do
      post 'new'
      post 'prereserve'
    end
  end
  resources :favorites, only: [:index]

  resources :rooms, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      get 'continue'
    end
    collection do
      get 'toppage'
    end
    collection do
      get 'search'
    end
    collection do
      get 'introduce'
    end
    collection do
      get 'dashboard'
    end
    collection do
      get 'landing'
    end
  	resources :bedrooms, only: [:new, :create, :edit, :update]
  	resources :bathrooms, only: [:new, :create, :edit, :update]
  	resources :locations, only: [:new, :create, :show, :edit, :update]
    resources :amenities, only: [:new, :create, :edit, :update]
    resources :photos, only: [:new, :create, :edit, :update, :destroy]
    resources :explanatories, only: [:new, :create, :edit, :update]
    resources :rules, only: [:new, :create, :edit, :update]
    resources :prices, only: [:new, :create, :edit, :update]
    resources :favorites, only: [:index, :create]
  end

  resources :reservations do
    collection do
      post 'confirm'
      post 'coming'
    end
  end
end
