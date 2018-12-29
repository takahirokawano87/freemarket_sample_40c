class PersonalInfo < ApplicationRecord
  belongs_to :user

  include JpPrefecture
  jp_prefecture :prefectures_code

end
