class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :privacy ]

  def home
    @temp_user = temp_user
    @is_temp_user = temp_user?
  end

  def privacy
  end
end
