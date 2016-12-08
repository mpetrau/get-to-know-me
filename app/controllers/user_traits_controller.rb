class UserTraitsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @traits = Trait.all
    @user_trait = UserTrait.new
  end

  def create
    @new_traits = user_traits_params[:traits].drop(1)
    @new_traits.each do |trait|
      new_trait = current_user.user_traits.build(trait_id: trait)
      unless new_trait.save
        flash[:alert] = "There is a mistake submitting your form"
        render :index
      end
      end
    GenerateOffers.generate_user_offers(current_user)
    flash[:notice] = "Thanks for sharing. We used it to target offers for you."
    redirect_to offers_path
  end

  private

  def user_traits_params
    params.require(:user).permit(traits: [])
  end

end
