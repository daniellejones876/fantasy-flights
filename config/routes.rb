Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/uikit", to:"pages#uikit"

  get '/dashboard', to: 'pages#dashboard'
  resources :users, only: %i[show]
  resources :vehicles do
    resources :booking
  end
end
