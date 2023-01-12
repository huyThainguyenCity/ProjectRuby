class UsersController < ApplicationController 
    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
         
        if @user.save
            redirect_to @user
        else
            flash[:error] = "Fail to create user"
            render "show"
        end
    end

    def edit
        
    end

    def update
        current_user
        if current_user.update(user_params)
        redirect_to current_user
        else
        render :edit, status: :unprocessable_entity
        end
    end

    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone_number, :birthday, :image)
    end
end
