Rails.application.routes.draw do
  devise_for :accounts
  
  # Dasboard
  get "/dasboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile

  resources :posts, only: [:new,:create,:show]

  root to: "public#homepage"
end
