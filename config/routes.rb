Rails.application.routes.draw do
  devise_for :users
  # root to: "pages#home"
  root to: "vehicles#index"
  get "/uikit", to: "pages#uikit"
  get '/dashboard', to: 'pages#dashboard'

  resources :users, only: %i[show]
  resources :vehicles do
    resources :bookings
  end
end
