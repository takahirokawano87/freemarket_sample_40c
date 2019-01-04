class ChangePrefectureToPersonalInfo < ActiveRecord::Migration[5.1]
  def change
    change_column :personal_infos, :prefectures, :integer
  end
end
