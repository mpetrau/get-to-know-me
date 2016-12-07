class Offer < ApplicationRecord
  belongs_to :deal
  belongs_to :user

  validates :user_id, :deal_id, presence: :true

  def score(user, deal)
    Weight.where(trait: user.traits, tag: deal.tags).sum(:weight)
  end

end
