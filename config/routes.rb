Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :listings
  get "/user/profile", to: "user#profile", as: "user_profile"
  get "/user/purchases", to: "user#purchases", as: "user_purchases"
  get "/user/listings", to: "user#listings", as: "user_listings"
  get "/listings/:id/buy", to: "listings#buy", as: "listing_buy"
end
