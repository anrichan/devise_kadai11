class ProfilesController < ApplicationController

   def new
    @profile = Profile.new
   end

   def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.save
    redirect_to home_index_path(@profile)
   end
   def show
    @profile = Profile.find(params[:id])
   end





# _________________________________________________________________
   private

  def profile_params
      params.require(:profile).permit(:photo, :comment, :user_id)
  end

end
