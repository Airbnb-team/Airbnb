Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'screen#index'
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  patch   'users/:id'  => 'users#update'
  resources :users
  resources :groups do
    resources :messages
  end
  resources :messages do
    collection do
      post 'new'
    end
  end
  resources :favorites, only: [:index]

  resources :rooms, only: [:index, :new, :create, :edit, :show, :update] do
    collection do
      get 'continue'
    end
    member do
      get 'edit_price'
    end
  	resources :bedrooms, only: [:new, :create, :edit, :update]
  	resources :bathrooms, only: [:new, :create, :edit, :update]
  	resources :locations, only: [:new, :create, :show, :edit, :update]
    resources :amenities, only: [:new, :create, :edit, :update]
    resources :photos, only: [:new, :create, :edit, :update]
    resources :explanatories, only: [:new, :create, :edit, :update]
    resources :rules, only: [:new, :create, :edit, :update]
  end
    get 'screen' => 'screen#photo'
  resources :reservations do
    collection do
      post 'confirm'
      post 'coming'
    end
  end
end
