class Offer < ApplicationRecord
  belongs_to :deal
  belongs_to :user

  validates :user_id, :deal_id, presence: :true

  def self.score(traits, deal)
    Weight.where(trait: traits, tag: deal.tags).sum(:weight)
  end

end
