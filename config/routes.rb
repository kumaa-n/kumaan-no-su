Rails.application.routes.draw do
  root "posts#index"
  resources :posts, only: %i[show]
  resource :profile, only: %i[show]
end
