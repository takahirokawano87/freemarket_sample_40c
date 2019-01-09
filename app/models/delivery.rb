class Delivery < ApplicationRecord
  belongs_to :item, optional: true, dependent: :destroy
  validates :fee, presence: true
  validates :kind, presence: true
  validates :area, presence: true
  validates :delivery_days, presence: true
end
