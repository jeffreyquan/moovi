Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users
  resources :movies
  resources :directors
  resources :lists
  resources :genres
  resources :actors

  # search and result from the TMDB using API
  get '/tmdb_result'=> 'pages#tmdb_result', :as => 'tmdb_result'
  get '/movies/add/:id' => 'movies#add', :as => 'add_movie'

  # session routes
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # search and result routes
  get '/show' => 'pages#search', :as => 'search'
  get '/result' => 'pages#result', :as => 'result'

  # route to user's lists
  get '/my_lists' => 'pages#my_lists', :as => 'my_lists'
end
