Rails.application.routes.draw do
  root 'plants#index'
  resources :plants
  resources :properties
end
