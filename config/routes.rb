# -*- encoding : utf-8 -*-
Pampa::Application.routes.draw do
	devise_for :users
	#get 'sessions/new'

	resources :users
	#resources :sessions, :only => [:new, :create, :destroy]

	get '/', :to => 'pages#home'
	get '/contact', :to => 'pages#contact'
	get '/about',   :to => 'pages#about'
	get '/help',    :to => 'pages#help'
	
	#get "users/new"
	#The following routes are replaced by Devise paths
	#get '/sign_up',  :to => 'users#new'
	#get '/sign_in',  :to => 'sessions#new'
	#get '/sign_out', :to => 'sessions#destroy'
  
	root :to => 'pages#home'
 
end
