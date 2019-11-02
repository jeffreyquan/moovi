Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create, :index, :edit, :update]
  resources :movies, :only => [:new, :create, :index, :show, :edit, :update]
  resources :directors, :only => [:new, :create, :index, :show, :edit, :update]
  resources :lists, :only => [:new, :create, :index, :edit, :show, :update, :destroy]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
