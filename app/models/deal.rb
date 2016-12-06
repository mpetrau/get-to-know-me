class Deal < ApplicationRecord
  has_many :deal_tags, dependent: :destroy
  has_many :tags, through: :deal_tags
  has_many :offers, dependent: :destroy
  has_many :users, through: :offers

  validates :name, :url, :category, :location, presence: :true
  validates :original_price, :new_price, numericality: true
end
