Rails.application.routes.draw do
  get 'pages/contact'

    get 'pages/home'
    root to: 'pages#home'

    resources :bookings
    resources :seasons
    resources :admins
    resources :pages
end
