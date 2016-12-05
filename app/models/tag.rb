class Tag < ApplicationRecord
  has_many :deal_tags
  has_many :deals, through: :deal_tags
end
