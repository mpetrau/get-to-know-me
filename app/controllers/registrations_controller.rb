class RegistrationsController < Devise::RegistrationsController

  def update
    sign_in :user, @temp_user if temp_user?
    super
    redirect_to edit_user_registration_path if temp_user?
    self.user_type = "member" if self.user_type == "guest"
  end

  protected

  def after_sign_up_path_for(resource)
    user_traits_path
  end
end
