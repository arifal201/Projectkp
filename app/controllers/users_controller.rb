class UsersController < ApplicationController
    before_action :set_user, only:[:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def show 
    end

    def new 
        @users =  User.new
    end

    def edit
    end

    def create
        @users = User.new(users_params)
        
        respond_to do |format|
            if @users.save
                format.html { redirect_to users_path, notice: 'Succes to save user'}
            else
                format.html { render :new}
            end
        end
    end
        
    def destroy
        @users.destroy
        respond_to do |format|
            format.html {redirect_to users_path, notice: 'success to destroy users'}
            format.json {head :no_content}
        end
    end

    def update
        respond_to do |format|
            if @users.update(users_params)
                format.html {redirect_to @users, notice: 'succes to update users'}
            else
                format.html {render :edit}
            end
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
