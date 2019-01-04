class PersonalInfo < ApplicationRecord
  belongs_to :user

  include JpPrefecture
  jp_prefecture :prefectures_code

  validates :family_name, presence: true, length: {maximum: 6}, format: {with: /\A[一-龥]+\z/}
  validates :first_name, presence: true, length: {maximum: 6}, format: {with: /\A[一-龥]+\z/}
  validates :family_kana, presence: true, length: {maximum: 10}, format: {with: /\A[ァ-ンー－]+\z/}
  validates :first_kana, presence: true, length: {maximum: 10}, format: {with: /\A[ァ-ンー－]+\z/}
  validates :postal_code, presence: true, format: {with: /\A\d{3}[-]\d{4}\z/}
  validates :prefectures_code, presence: true
  validates :municipality, presence: true
  validates :address_num, presence: true
  validates :telephone, format: {with:  /\A\d{10}\z|\A\d{11}\z/}

end
