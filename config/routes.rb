Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :movies, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :directors, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :lists, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :genres, :only => [:new, :create, :index, :show, :edit, :update, :destroy]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
