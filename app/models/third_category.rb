class ThirdCategory < ApplicationRecord
  has_many :item
  belongs_to :second_category
end
