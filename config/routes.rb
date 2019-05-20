Rails.application.routes.draw do
  resources :stores, only: :index
end
