class LoginController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)

    if @user.save
      redirect_to users_path      
    else
      redirect_to login_new_path
    end
    
  end

  private 
    def set_user
        @users = User.find(params[:id])
    end

    def users_params
        params.require(:user).permit(:username, :password, :alamat)
    end
end
