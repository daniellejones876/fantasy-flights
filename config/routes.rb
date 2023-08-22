Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/uikit", to:"pages#uikit"

  resources :vehicles do
    resources :booking
  end
end
