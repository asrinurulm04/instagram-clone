Rails.application.routes.draw do
  devise_for :accounts
  
  # Dasboard
  get "/dasboard" => "accounts#index"

  resources :posts, only: [:new,:create,:show]

  root to: "public#homepage"
end
