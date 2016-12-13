class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :privacy ]

  def home
    # @displayable_nav = true
  end

  def privacy
  end
end
