class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :privacy]#, :hellobug ]

  def home
    # @displayable_nav = true
  end

  # def hellobug
  #   redirect_to '/user_traits'
  # end

  def privacy
  end
end
