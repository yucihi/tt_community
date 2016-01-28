class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to user_profile_path(current_user,current_user.profile)
    else
      redirect_to new_user_profile_path(current_user)
    end
  end

  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile
  end

  def update
    if current_user.profile.update_attributes(profile_params)
      redirect_to user_profile_path(current_user,current_user.profile)
    else
      redirect_to edit_user_profile_path(current_user,current_user.profile)
    end
  end

  def destroy
  end

  def picture
    @profile = current_user.profile
    send_data(@profile.picture_data, :type => @profile.content_type, :disposition => 'inline')
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :sex, :birthday, :team, :place, :picture_file)
  end
end
