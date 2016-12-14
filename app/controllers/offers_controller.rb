class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @user = current_or_guest_user
    # the functionality to limit number of available options
    if user_signed_in? # for users who are Members:
      # if in a cookie has encrypted offer IDs and user ID and matches a token, show offers from a cookie
      if cookies.encrypted[:offers_token].present? && JSON.parse(cookies.encrypted[:offers_token])["id"] == current_user.id
        offers = JSON.parse(cookies.encrypted[:offers_token])["offers"].collect {|id| Offer.find_by_id(id)}
      # else generate new cookie for the future use (with expiration of 100 mins), as well as offer list
      else
        offers = Offer.where(user: @user, disliked?: false).sort{ |a,b| b.score <=> a.score }.first(10)
        cookies.encrypted[:offers_token] = {
          value: {offers: offers.collect{ |offer| offer.id}, id: current_user.id }.to_json,
          expires: 100.minutes.from_now
        }
      end
      # from above (either from cookie, or new), select top 6 and pass into a view
      @offers = offers.select {|offer| offer.user ==  @user && offer.disliked? == false}.sort{ |a,b| b.score <=> a.score }.first(6)
      @is_incomplete_offers = @offers.length < 6
    else # for Guest users, pick up top 5 offers (always static)
      @offers = Offer.where(user: @user).sort{ |a,b| b.score <=> a.score }.first(5)
    end

  end

  def favorites
    @offers= Offer.where(user: current_user, disliked?: false, liked?: true).sort{ |a,b| b.score <=> a.score }
    @empty = @offers.empty?
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
      @offer.toggle!(:disliked?)
    end

    respond_to do |format|
      format.json do
        render json: @offer.attributes.to_json
      end
      format.html do
        redirect_to(:back)
      end
    end

  end

  private

  def offer_params
    params.require(:offer).permit([:bought?, :liked?, :disliked?])
  end

end
