class UsersController < ApplicationController
  before_filter :require_user,  :only => [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
     redirect_to "/gadgets"
    else
     render :action => :new
    end
  end

  private
  def user_params
   params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

end
