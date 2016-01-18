class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    new_user_profile_path(current_user)
  end

  def after_inactive_sign_up_path_for(resource)
    new_user_profile_path(current_user)
  end
end
