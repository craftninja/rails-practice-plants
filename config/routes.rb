Rails.application.routes.draw do
  root 'plants#index'
  resources :plants do
    resources :recipes
  end
end
