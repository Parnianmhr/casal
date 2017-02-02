Rails.application.routes.draw do
  get 'pages/contact'

    get 'pages/home'
    root to: 'pages#home'

    resources :bookings
    resources :villas
    resources :sessions, only:[:new, :create, :destroy]
    resources :admins, only: [:new, :create, :index]
end
