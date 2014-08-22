Pampa::Application.routes.draw do
  get 'sessions/new'

	resources :users
	resources :sessions, :only => [:new, :create, :destroy]

	get '/', :to => 'pages#home'
	get '/contact', :to => 'pages#contact'
	get '/about',   :to => 'pages#about'
	get '/help',    :to => 'pages#help'
	
	get "users/new"
	get '/signup',  :to => 'users#new'
	get '/signin',  :to => 'sessions#new'
	get '/signout', :to => 'sessions#destroy'
  
	root :to => 'pages#home'
 
end