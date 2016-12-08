class DealTag < ApplicationRecord
  after_commit :generator

  belongs_to :deal
  belongs_to :tag

  validates :deal_id, :tag_id, presence: :true

  def generator
    GenerateOffers.generate_deal_offers
  end
end
