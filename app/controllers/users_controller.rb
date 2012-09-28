class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    edit
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    render :edit    
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @user.permissions << Permission.new
    @user.permissions << Permission.new    
    render :edit    
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    if @user.save
      render :edit
    else
      render :action => "new" 
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    y params[:user]
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to @user, :notice => 'User was successfully updated.'
    else
      render :edit
    end
  end
    
end
