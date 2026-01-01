Rails.application.routes.draw do
  root "posts#index"
  resources :posts, only: %i[show]
  get "/profile", to: "high_voltage/pages#show", id: "profile", format: false
end
