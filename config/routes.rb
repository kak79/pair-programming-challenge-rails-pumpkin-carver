Rails.application.routes.draw do
  resources :pumpkins, only: [:new, :create, :index]
  match "/", to: "farms#index", via: "get"
  resources :farms, only: [:new, :index, :show, :create]
end
