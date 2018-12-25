class SecondCategory < ApplicationRecord
  has_many :item
  belongs_to :first_category
  has_many :third_category
end
