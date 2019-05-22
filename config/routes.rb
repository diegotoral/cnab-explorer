Rails.application.routes.draw do
  root to: 'landing#index'

  resources :stores, only: :index
end
