class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :privacy]#, :hellobug ]

  def home
    # @displayable_nav = true
    @is_guest = session[:guest_user_id].present?
  end

  # def hellobug
  #   redirect_to '/user_traits'
  # end

  def privacy
  end
end
