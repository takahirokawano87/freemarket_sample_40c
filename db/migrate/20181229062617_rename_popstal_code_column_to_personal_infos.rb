class RenamePopstalCodeColumnToPersonalInfos < ActiveRecord::Migration[5.1]
  def change
    rename_column :personal_infos, :popstal_code, :postal_code
  end
end
