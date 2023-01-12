class UsersController < ApplicationController 
    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.create! user_params.require(:user)
        @user.image.attach(params[:user][:image])
        redirect_to user 
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
        redirect_to @user
        else
        render :edit, status: :unprocessable_entity
        end
    end

    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone_number, :birthday, :image)
    end
end
