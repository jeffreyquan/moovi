Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :movies, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :directors, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :lists, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :genres, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :actors, :only => [:new, :create, :index, :show, :edit, :update, :destroy]

  get '/search' => 'pages#search', :as => 'search'
  get '/result'=> 'pages#result'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get 'movies/add/:id' => 'movies#add', :as => 'add_movie'

  get '/search_result' => 'pages#search_result', :as => 'search_result'
  get '/my_lists' => 'pages#my_lists'
end
