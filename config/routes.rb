Rails.application.routes.draw do
  resources :artists
  resources :songs 
  resources :users, only: [:show, :create]
  resources :reviews

  get '/register', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  # post ‘post/:id/like’, to: ‘posts#like’ 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
