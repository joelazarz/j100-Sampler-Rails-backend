class UsersController < ApplicationController

    def index 
        users = User.all 

        render json: users
    end

    def show
        user = User.find(params[:id])

        render json: user
    end

    def new
        user = User.new 
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def edit 
        user = User.find(params[:id])
    end

    def update
        user = User.update(user_params)
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :location, :website, :bio, :image)
    end

end
