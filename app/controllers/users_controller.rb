# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  before_filter :admin_user,   :only => :destroy
  before_action :authenticate_user! #=> Authenticate for Devise
 
  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
	@user = User.find(params[:id]) 
  end

  # GET /users/new
  def new
	@titre = "Sign up"
  end

  # GET /users/1/edit
  #def edit
	#regarder comment faire hériter cette fonction de devise
	#@titre = "Edit your information"
  #end

  # POST /users
  def create
  end

  # PATCH/PUT /users/1
  def update
	
  end

  # DELETE /users/1
  def destroy

  end

end
