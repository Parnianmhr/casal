Rails.application.routes.draw do
  devise_for :admins
  root to: "index#home"

  resources :bookings
  resources :guests, only: [:create]
  end
  resources :users
