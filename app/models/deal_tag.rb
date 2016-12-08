class DealTag < ApplicationRecord
  after_commit :generate_offers

  belongs_to :deal
  belongs_to :tag

  validates :deal_id, :tag_id, presence: :true

end
