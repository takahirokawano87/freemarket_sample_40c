class FirstCategory < ApplicationRecord
  has_many :item
  has_many :second_category
end
