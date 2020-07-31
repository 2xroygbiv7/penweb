Rails.application.routes.draw do
  resources :products
  #get 'pages/home'
  root to: "pages#home"
end
