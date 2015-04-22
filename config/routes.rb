Rails.application.routes.draw do
  # resources :plants
  get '/plants' => 'plants#index', as: 'plants'
  get '/plants/new' => 'plants#new', as: 'new_plant'
  post '/plants' => 'plants#create'
  get '/plants/:id' => 'plants#show', as: 'plant'
  get '/plants/:id/edit' => 'plants#edit', as: 'edit_plant'
  patch '/plants/:id' => 'plants#update'
  delete 'plants/:id' => 'plants#destroy'
end
