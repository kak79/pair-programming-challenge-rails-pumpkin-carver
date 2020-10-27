Rails.application.routes.draw do
  match "/", to: "farms#index", via: "get"
  resources :farms, only: [:new, :index, :show, :create]
end
