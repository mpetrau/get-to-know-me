class UserTraitsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @traits = Trait.all
    @user_trait = UserTrait.new
    @user= current_user
  end

  def create
    @new_traits = user_traits_params[:trait_ids].drop(1)
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
  
  # def edit
  #   @traits= Trait.all
  #   @user_trait = UserTrait.new
  # end
  
  # def update
  #   @user_trait = UserTrait.find(params[:id_trait].to_i)
  #   @user_trait.update(user_traits_params)
  #   redirect_to profile_path
  # end
  
  def destroy
    UserTrait.find(params[:id_trait].to_i).destroy
    redirect_to profile_path(current_user)
  end

  private

  def user_traits_params
    params.require(:user).permit(trait_ids: [])
  end

end
