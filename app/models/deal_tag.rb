class DealTag < ApplicationRecord
  belongs_to :deal
  belongs_to :tag

  validates :deal_id, :tag_id, presence: :true
end
