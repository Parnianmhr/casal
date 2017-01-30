Rails.application.routes.draw do
  root to: "index#home"

  resources :bookings
  resources :users
end
