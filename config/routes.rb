Rails.application.routes.draw do
  get 'pages/contact'

    get 'pages/home'
    root to: 'pages#home'

    resources :bookings
    resources :villas

    #Sessions routes - enables admin to log in and log out
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    #Admin routes - allows admin to create a new admin
    get '/signup' => 'admins#new'
    post '/admins' => 'admins#create'
end
