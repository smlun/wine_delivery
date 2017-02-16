Rails.application.routes.draw do
  devise_for :users
  resources :carts

  resources :wines do
    resources :orders
  end

  root 'wines#index'
end
