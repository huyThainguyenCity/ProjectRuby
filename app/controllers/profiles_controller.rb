class ProfilesController < ApplicationController 
    def show
        @profile = Profile.find(params[:id])
    end

    def create
        @profile = Profile.create! params.require(:profile)
        @profile.image.attach(params[:profile][:image])
        redirect_to profile    
    end

    def edit
        @profile = Profile.find(params[:id])
    end

    def update
        @profile = Profile.find(params[:id])

        if @profile.update(profile_params)
        redirect_to @profile
        else
        render :edit, status: :unprocessable_entity
        end
    end

    private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :phone_number, :birthday, :image)
    end
end
