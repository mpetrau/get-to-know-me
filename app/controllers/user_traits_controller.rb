class UserTraitsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    # byebug
    @traits = Trait.all
    @user_trait = UserTrait.new
    # if user_signed_in?
      @user = current_user
    # else
    #   unless cookies[:user].nil?
    #     cookies[:user] = {id:  request.remote_ip}.to_json
    #   end
    #   @user = JSON.parse(cookies[:user])
    # end
  end


  def update
    @new_traits = user_traits_params[:trait_ids]
    # if user_signed_in?
      current_user.user_traits.destroy_all
      @new_traits.each do |trait|
        new_trait = current_user.user_traits.create(trait_id: trait)
      end
      GenerateOffers.generate_user_offers(current_user)
      flash[:notice] = "Thanks for sharing. We used it to target offers for you."
    # else
    #   cookies.delete :traits
    #   cookies.delete :traits
    #   cookies[:traits]
    #   cookies[:traits] = @new_traits.to_json
    #   GenerateOffers.generate_sample_offers(JSON.parse(cookies[:traits]))
    #   flash[:notice] = "Thanks for sharing. Here are some of your sample offers"
    # end
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
