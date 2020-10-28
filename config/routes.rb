Rails.application.routes.draw do
  resources :pumpkins, only: [:new, :create, :index, :show]
  match "/", to: "farms#index", via: "get"
  resources :farms, only: [:new, :index, :show, :create]
end
