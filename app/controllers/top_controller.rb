class TopController < ApplicationController
  def index
  	if user_signed_in?
  		if current_user.profile.nil?
  			redirect_to new_user_profile_path(current_user)
  		end
  	end
  	@contents = Content.all
  end
end
