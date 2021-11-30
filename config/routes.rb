Rails.application.routes.draw do
  devise_for :accounts
  
  # Dasboard
  get "/dasboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile
  get "post/like/:post_id" => "likes#save_like", as: :like_post

  resources :posts, only: [:new,:create,:show]

  root to: "public#homepage"
end
