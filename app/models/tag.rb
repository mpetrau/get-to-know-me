class Tag < ApplicationRecord
  has_many :deal_tags, dependent: :destroy
  has_many :deals, through: :deal_tags
  has_many :offers, through: :deals
  has_many :users, through: :offers
  has_many :weights

  validates :name, uniqueness: :true, presence: :true
end
