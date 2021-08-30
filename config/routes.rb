Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists, only: [ :index, :show]
  resources :albums, only: [ :show, :index  ] do
    resources :reviews, only: [ :new, :create ]
  end
  resources :sellers, only: [ :index, :show ]

  resources :reviews, only: [ :destroy ]

  resources :users, only: [ :index ] do
    resources :favourites, only: [ :index ]
  end

  resources :favourites, only: [ :create, :destroy ]

  get "profile", action: :index, controller: "users"
end
