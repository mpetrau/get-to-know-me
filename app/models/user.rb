class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_deals, dependent: :destroy
  has_many :deals, through: :user_deals
  has_many :user_characteristics, dependent: :destroy
  has_many :characteristics, through: :user_characteristics

  validates :location, :email, presence: :true
end
