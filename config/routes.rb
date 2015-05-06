Rails.application.routes.draw do
  root 'plants#index'
  resources :plants do
    resources :characteristics
  end
  resources :properties
end
