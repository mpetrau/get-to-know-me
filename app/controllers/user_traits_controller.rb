class UserTraitsController < ApplicationController

  def index
    @traits = Trait.all
    @user_trait = UserTrait.new
  end

  def create

    @new_traits = user_traits_params[:traits].drop(1)
    @new_traits.each do |trait|
      new_trait = current_user.user_traits.build(trait_id: trait)
      unless new_trait.save
        flash[:warning] = "There is a mistake submitting your form"
        render :index
      end
      end
    redirect_to offers_path
    flash[:notice] = "Thanks"
  end

  # def edit
  #   render 'user_traits/index'
  # end

  # def update
  #   @offer.update(offer_params)
  #   redirect_to offer_path(@offer)
  # end

  private

  def user_traits_params
    params.require(:user).permit(traits: [])
  end

end
