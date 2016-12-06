class Tag < ApplicationRecord
  has_many :deal_tags, dependent: :destroy
  has_many :deals, through: :deal_tags

  validates :name, uniqueness: :true, presence: :true
end
