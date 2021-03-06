class Trait < ApplicationRecord

  has_many :user_traits, dependent: :destroy
  has_many :users, through: :user_traits
  has_many :weights, dependent: :destroy

  validates :name, presence: :true, uniqueness: :true
end
