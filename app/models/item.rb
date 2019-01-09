class Item < ApplicationRecord
  belongs_to :size
  belongs_to :brand, optional: true
  belongs_to :first_category
  belongs_to :second_category
  belongs_to :third_category
  has_one :image, dependent: :destroy
  accepts_nested_attributes_for :image
  has_one :delivery, dependent: :destroy
  accepts_nested_attributes_for :delivery
  belongs_to :seller, class_name: "User"

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :condition, presence: true
  validates :first_category_id, presence: true
  validates :size_id, presence: true
  validates :image, presence: true
  validates :delivery, presence: true
end
