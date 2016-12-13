class UserTraitsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @traits = Trait.all
    @user_trait = UserTrait.new
    @user= current_or_guest_user
  end

  def update
    @user= current_or_guest_user
    @user.user_traits.destroy_all
    @new_traits = user_traits_params[:trait_ids]
    @new_traits.each do |trait|
      new_trait = @user.user_traits.create(trait_id: trait)
    end
    GenerateOffers.generate_user_offers(current_or_guest_user)
    flash[:notice] = "Thanks for sharing. We used it to target offers for you."
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
