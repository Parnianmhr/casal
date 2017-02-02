Rails.application.routes.draw do
  get 'pages/contact'

    get 'pages/home'
    root to: 'pages#home'
    
    resources :bookings
    resources :villas
    resources :admins
end
