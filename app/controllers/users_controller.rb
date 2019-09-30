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
        user = User.create(username: params[:username], password: params[:password])

        if user.save
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
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
        params.require(:user).permit(:location, :website, :bio, :darkmode)
    end

end
