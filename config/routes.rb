Rails.application.routes.draw do
  get 'lists/new'
  root :to => 'pages#home'

  resources :users, :only => [:new, :create, :index, :edit, :update, :show]
  resources :movies, :only => [:new, :create, :index, :show, :edit, :update]
  resources :directors, :only => [:new, :create, :index, :show, :edit, :update]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # resources :lists, :only => [:new,]
end
