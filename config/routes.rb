Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # A visitor can see the list of all restaurants.
  get "restaurants" => "restaurants#index", as: :restaurants

  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  get "restaurants/new" => "restaurants#new", as: :new_restaurant
  post "restaurants" => "restaurants#create"

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  get "restaurants/:id" => "restaurants#show", as: :restaurant

  # A visitor can add a new review to a restaurant
  get "restaurants/:restaurant_id/reviews/new" => "reviews#new", as: :new_restaurant_review
  post "restaurants/:restaurant_id/reviews" => "reviews#create", as: :restaurant_reviews
end
