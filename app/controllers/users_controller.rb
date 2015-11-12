class UsersController < ApplicationController
  before_action :require_user, only: [:edit]
  def new
    @user = User.new
  end
  def create 
    @user = User.new(user_params) 
    if @user.save 
      session[:user_id] = @user.id 
      redirect_to '/', :only_path => true 
    else 
      redirect_to '/register' 
    end 
  end
  def show
    @user = User.find(params[:id])    
  end
  def showuploads
    @user = User.find(params[:id])
    #@fanfics = @user.fanfics
    @works = @user.works
  end
  def showfavorites
    @user = User.find(params[:id])   
  end
  def showotps
    @user = User.find(params[:id])    
  end
  def showbrotps
    @user = User.find(params[:id])    
  end
  def edit
    @user = User.find(params[:id])
  end
private
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end
end