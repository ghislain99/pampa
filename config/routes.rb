Pampa::Application.routes.draw do
	resources :users
	
	get '/', :to => 'pages#home'
	get '/contact', :to => 'pages#contact'
	get '/about',   :to => 'pages#about'
	get '/help',    :to => 'pages#help'
	
	get "users/new"
	get '/signup',  :to => 'users#new'
	
	root :to => 'pages#home'
 
end