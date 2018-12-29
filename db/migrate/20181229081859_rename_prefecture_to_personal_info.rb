class RenamePrefectureToPersonalInfo < ActiveRecord::Migration[5.1]
  def change
    rename_column :personal_infos, :prefectures, :prefectures_code
  end
end
