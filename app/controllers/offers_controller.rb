class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    # if user_signed_in?
    @offers= Offer.where(user: current_user, disliked?: false).sort{ |a,b| b.score <=> a.score }.first(6)
    # else
    # @offers = JSON.parse(cookies[:offers])
    # end
  end

  def favorites
    @offers= Offer.where(user: current_user, disliked?: false, liked?: true).sort{ |a,b| b.score <=> a.score }
  end

  def edit
    @offer= Offer.find(params[:id])
  end

  def update
    @offer= Offer.find(params[:id])
    if params[:bought?]
      @offer.toggle!(:bought?)
    elsif params[:liked?]
      @offer.toggle!(:liked?)
    elsif params[:disliked?]
      @offer.toggle(:disliked?)
    end
    redirect_to (:back)
  end

  private

  def offer_params
    params.require(:offer).permit([:bought?, :liked?, :disliked?])
  end

end
