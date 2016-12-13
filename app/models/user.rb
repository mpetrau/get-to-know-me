class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, request_keys: [conditions: -> { where.not(user_type: 'guest') }]#, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

  has_many :offers, dependent: :destroy
  has_many :deals, through: :offers
  has_many :user_traits, dependent: :destroy
  has_many :traits, through: :user_traits
  has_many :deal_tags, through: :deals
  has_many :tags, through: :deal_tags


  validates_uniqueness_of :email, case_sensitive: false, allow_blank: false, if: :password_required?
  validates_format_of :email, with: Devise.email_regexp, allow_blank: false, if: :password_required?
  validates_presence_of :password, on: :create, if: :password_required?
  # validates_confirmation_of :password, :on=>:create
  validates_length_of :password, within: Devise.password_length, if: :password_required?


  # def index_users_on_email
  #   if user_type == "guest"
  #     false
  #   else
  #     true
  #   end
  # end

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

  private

  def email_required?
    if user_type == "guest"
     new_record? ? false : super
    else
      true
    end
  end

  def password_required?
    if user_type == "guest"
      new_record? ? false : super
    else
      true
    end
  end
end
