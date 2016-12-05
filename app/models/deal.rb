class Deal < ApplicationRecord
  has_many :deal_tags, dependent: :destroy
  has_many :tags, through: :deal_tags
  has_many :user_deals, dependent: :destroy
  has_many :users, through: :user_deals

  validates :name, :url, :category, :location, presence: :true
  validates :original_price, :new_price, numericality: true
end
