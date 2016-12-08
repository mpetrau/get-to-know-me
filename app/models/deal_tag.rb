class DealTag < ApplicationRecord
  after_commit :generate_offers

  belongs_to :deal
  belongs_to :tag

  validates :deal_id, :tag_id, presence: :true

  def generate_offers
    @deal = DealTag.last.deal
    if Offer.where(deal: @deal).empty?
      create_offers
    else
      update_offers
    end
  end

  private

  def create_offers
    User.all.each do |user|
      Offer.create(deal: @deal, user: user, score: Offer::score(user, @deal))
    end
  end

  def update_offers
    Offer.where(deal: @deal).each { |offer| offer.update(score: Offer::score(offer.user, @deal)) }
  end
end
