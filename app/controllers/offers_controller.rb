class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    current_user = temp_user if current_user.nil?
    @offers= Offer.where(user: current_user, disliked?: false).sort{ |a,b| b.score <=> a.score }.first(6)
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
