class Delivery < ApplicationRecord
  belongs_to :item, optional: true, dependent: :destroy
end
