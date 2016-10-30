Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'static_pages#home'  
  get "users/new"
  get '/signup', to:"users#new"
  get '/home', to:'static_pages#home'
  get '/help', to:'static_pages#help'
  get '/about', to:'static_pages#about'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  resources :microposts,   only: [:create, :destroy]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
