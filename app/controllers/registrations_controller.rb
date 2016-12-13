class RegistrationsController < Devise::RegistrationsController
# skip_before_action :authenticate_user!, :only => [:edit, :update]

#   def edit
#     byebug
#     sign_in :user, @temp_user if temp_user?
#     super
#   end

#   def update
#     super
#     redirect_to edit_user_registration_path if temp_user?
#     self.user_type = "member" if self.user_type == "guest"
#   end

  protected

  # def resource_name
  #   "user"
  # end

  # def set_minimum_password_length
  #   6
  # end

  def after_sign_up_path_for(resource)
    user_traits_path
  end
end
