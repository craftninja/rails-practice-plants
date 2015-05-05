Rails.application.routes.draw do
  root 'plants#index'
  resources :plants do
    resources :recipes
  end
  get '/recipes' => 'recipes#index', as: 'recipe'
  post '/recipes' => 'recipes#indexcreate'
end
