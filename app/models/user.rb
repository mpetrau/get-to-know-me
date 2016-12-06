class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :offers, dependent: :destroy
  has_many :deals, through: :offers
  has_many :user_traits, dependent: :destroy
  has_many :traits, through: :user_traits

  validates :location, :email, presence: :true
end
