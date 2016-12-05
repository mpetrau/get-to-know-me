class UserCharacteristic < ApplicationRecord
  belongs_to :user
  belongs_to :characteristic

  validates :user_id, :characteristic_id, presence: :true
end
