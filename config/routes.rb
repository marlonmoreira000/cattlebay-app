Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :listings
  get "/user/profile", to: "user#profile", as: "user_profile"
  get "/user/purchases", to: "user#purchases", as: "user_purchases"
  get "/user/listings", to: "user#listings", as: "user_listings"
  get "/pages/buy_confirmation", to: "pages#buy_confirmation", as: "buy_confirmation"
end
