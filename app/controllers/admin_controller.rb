class AdminController < ApplicationController
  def index
    @admin = User.all

  end

  def create
    @adminusername = "admin123"
    @adminpassword = "admin123"
    @username = params[:user][:username]
    @password = params[:user][:password]

    if @username == @adminusername && @password == @adminpassword
      redirect_to admin_index_path
    else 
      redirect_to admin_login_admin_path
    end
  end

  def login_admin
    @admin = User.new
  end
end