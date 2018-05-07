class UsersController < ApplicationController

  def index
    @allusers = User.all
  end

  def new 
    @user = User.new
  end 

  def login 
  end

  def create 
    @user = User.create(user_params)

    if @user.valid? 
      session["user_id"] = @user.id 
      redirect_to user_path(@user)
    else 
      redirect_to new_user_path
    end

  end 

  def show 
    @user = User.find(params["id"])
  end

  def edit 
    @user = User.find(params["id"])
  end 

  def update 
    @user = User.find(params["id"])

    if @user.valid?
      @user.update(username: params["user"]["username"], email: params["user"]["email"], password: params["user"]["password"])
      @user.save 
      redirect_to user_path(@user)
    else 
      redirect_to edit_user_path(@user)
    end

  end 

  def delete 
    binding.pry
  end

  private

  def user_params
    params.permit(:username, :password, :email)
  end

end
