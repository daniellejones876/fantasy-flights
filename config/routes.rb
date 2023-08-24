Rails.application.routes.draw do
  devise_for :users
  root to: "vehicles#index"
  get '/home', to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'

  resources :users, only: %i[show]
  resources :vehicles do
    resources :bookings
  end
end
