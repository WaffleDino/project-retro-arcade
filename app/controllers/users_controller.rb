class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        this_user = User.find(params[:id])
        this_user.update!(user_params)
        render json: this_user, status: :no_content
    end

    def create
        new_user = User.create!(user_params)
        render json: User.find(new_user.user_id), status: :created
    end

    def destroy
        this_user = User.find(params[:id])
        this_user.destroy
        render status: :ok
    end

    private

    def user_params
        params.permit(:username, :password_digest)
    end
end
