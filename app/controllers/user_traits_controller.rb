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
    # if new_traits.length > 2
    #   redirect_to offers_path
    #   flash[:notice] = "We learned about you!"
    # else
    #   render 'user_traits/index'
    #   flash[:alert] = "Please select at least two attributes"
    # end
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
