class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @offers= Offer.where(user: current_user, disliked?: false).sort{ |a,b| b.score <=> a.score }.first(6)
  end

  def edit
    @offer= Offer.find(params[:id])
  end

  def update
    @offer= Offer.find(params[:id])
    if params[:bought?]
      @offer.update(:bought? => true)
    elsif params[:liked?]
      @offer.update(:liked? => true)
    elsif params[:disliked?]
      @offer.update(:disliked? => true)
    end
    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit([:bought?, :liked?, :disliked?])
  end

end
