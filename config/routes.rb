Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/uikit", to:"pages#uikit"

  get '/dashboard', to: 'pages#dashboard'

  resources :vehicles do
    resources :bookings
  end
end
