Rails.application.routes.draw do
  get 'pages/contact'

    get 'pages/home'
    root to: 'pages#home'


    resources :bookings do
      resources :admins, only:[:index]
      resources :seasons
    end

    resources :seasons
    resources :pages

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    get '/signup' => 'admins#new'
    post '/admins' => 'admins#create'
end
