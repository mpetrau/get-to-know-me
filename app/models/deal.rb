class Deal < ApplicationRecord
  has_many :deal_tags
  has_many :tags, through: :deal_tags
  has_many :user_deals
  has_many :users, through: :user_deals
end
