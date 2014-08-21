Pampa::Application.routes.draw do
	get '/', :to => 'pages#home'
	get '/contact', :to => 'pages#contact'
	get '/about',   :to => 'pages#about'
	get '/help',    :to => 'pages#help'
	
	get "users/new"
	get '/signup',  :to => 'users#new'
	
	resources :users
	  
	root :to => 'pages#home'
 
end