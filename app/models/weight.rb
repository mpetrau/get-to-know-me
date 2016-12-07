class Weight < ApplicationRecord
  belongs_to :tag
  belongs_to :trait
end
