Rails.application.routes.draw do
  get 'store/index'

  resources :line_items
  resources :carts
  get 'items/index'
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
