class UserTraitsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @traits = Trait.all
    @traits = Trait.first(7) unless user_signed_in?
    @user_trait = UserTrait.new
    @user = current_or_guest_user
    if @user.user_type == "guest" && @user.offers.length > 0
      redirect_to offers_path
    end
  end

  def update
    @user = current_or_guest_user
    @user.user_traits.destroy_all
    @new_traits = user_traits_params[:trait_ids]
    @new_traits.each do |trait|
      new_trait = @user.user_traits.create(trait_id: trait)
    end
    if current_user
      GenerateOffers.generate_member_offers(current_user)
      flash[:notice] = "Thanks for sharing. We used it to target offers for you"
    elsif guest_user
      GenerateOffers.generate_guest_offers(guest_user)
      flash[:notice] = "Here are some sample deals for you. For full functionality, please Sign Up"
    else
      redirect_to root_path
    end
    redirect_to offers_path
  end

  def destroy
    UserTrait.find(params[:id_trait].to_i).destroy
    redirect_to profile_path(current_user)
  end

  private

  def user_traits_params
    params.require(:user).permit(trait_ids: [])
  end

end
