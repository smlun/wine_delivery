Rails.application.routes.draw do
  get 'cart/new'

  get 'cart/create'

  get 'cart/show'

  get 'cart/destroy'

  get 'cart/index'

  resources :wines
  
  root 'wines#index'
end
