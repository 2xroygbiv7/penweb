Rails.application.routes.draw do
  resources :products
  resources :categories, only: [:index]
  #get 'categories#index'
  root to: "pages#home"
end
