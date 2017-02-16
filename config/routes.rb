Rails.application.routes.draw do
  resources :carts
  resources :wines

  root 'wines#index'
end
