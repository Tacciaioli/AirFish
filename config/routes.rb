Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :items do
    resources :reservations, only: [:new, :create, :destroy]
    resources :reviews, only: [:new, :create]
    get :reviews, on: :menber
  end
  resources :reservations, only: [:index]

  get "/my_items", to: "items#user_index"
end
