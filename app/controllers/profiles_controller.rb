class ProfilesController < ApplicationController
  def show
    @user = current_user
    @traits = @user.user_traits
  end
end
