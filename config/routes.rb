Rails.application.routes.draw do
    get 'pages/home'
    root to: 'pages#home'
    devise_for :admins

    resources :bookings
    resources :guests, only: [:create]
    resources :users
end
