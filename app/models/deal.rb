class Deal < ApplicationRecord
  has_many :deal_tags
  has_many :user_deals
end
