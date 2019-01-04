class CreatePersonalInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :personal_infos do |t|
      t.string :family_name, null: false
      t.string :first_name, null: false
      t.string :family_kana, null: false
      t.string :first_kana, null: false
      t.string :popstal_code, null: false
      t.string :prefectures, null: false
      t.string :municipality, null: false
      t.string :address_num, null: false
      t.string :building_name
      t.string :telephone
      t.date :birth_day
      t.integer :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
