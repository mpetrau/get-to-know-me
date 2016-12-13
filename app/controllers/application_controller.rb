class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # def after_sign_in_path_for(resource)
  #   #user_traits_path
  #   offers_path
  # end

  def temp_user
    User.find_by_id(cookies.encrypted[:temp_user])
  end

  def temp_user?
    User.exists?(temp_user) && temp_user.email.empty? && temp_user.user_type == "guest"
  end

end
