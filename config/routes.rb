Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'restaurants/index'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # get "restaurants/:id/reviews/new", to: "reviews#new", as: :new_restaurant_review
  # post "restaurants/:id/reviews", to: "reviews#create", as: :restaurant_reviews

  resources :restaurants do
    resources :reviews, only: [:create]
  end
end
