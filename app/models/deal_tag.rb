class DealTag < ApplicationRecord
  after_commit :generate_offers

  belongs_to :deal
  belongs_to :tag

  validates :deal_id, :tag_id, presence: :true

  # def generate_offers
  #   if Offer.where("deal_id": :deal_id).empty?
  #     create_offers
  #   else
  #     update_offers
  #   end
  # end

  # private

  # def create_offers

  # end

  # def update_offers
  # end
end
