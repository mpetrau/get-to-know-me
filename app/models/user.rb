class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

  has_many :offers, dependent: :destroy
  has_many :deals, through: :offers
  has_many :user_traits, dependent: :destroy
  has_many :traits, through: :user_traits
  has_many :deal_tags, through: :deals
  has_many :tags, through: :deal_tags

  validates :email, presence: :true
  #removed :location, from validation logic until functionality is added.

  def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

  def self.generate_user_offers
    if current_user.offers.length > 0
      current_user.offers.each { |offer| offer.update(score: Offer::score(current_user, offer.deal))}
    else
      Deal.all.each { |deal| Offer.create(user: current_user, deal: deal, score: Offer::score(current_user, deal)) }
    end
  end
end
