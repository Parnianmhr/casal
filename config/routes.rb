Rails.application.routes.draw do
  get 'pages/contact'

    get 'pages/home'
    root to: 'pages#home'
    devise_for :admins

    resources :bookings
    resources :villas
    resources :admins
end
