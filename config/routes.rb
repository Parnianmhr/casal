Rails.application.routes.draw do
  root to: "index#home"

  resources :bookings
  resources :guests, only: [:create]
  end
  resources :users
end
