class Offer < ApplicationRecord
  belongs_to :deal
  belongs_to :user

  validates :user_id, :deal_id, presence: :true
end
