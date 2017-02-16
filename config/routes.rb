Rails.application.routes.draw do
  resources :carts

  resources :wines do
    resources :orders
  end

  root 'wines#index'
end
