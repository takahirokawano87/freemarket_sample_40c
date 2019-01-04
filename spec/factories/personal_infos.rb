# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :personal_info do
    family_name "MyString"
    first_name "MyString"
    family_kana "MyString"
    first_kana "MyString"
    popstal_code "MyString"
    prefectures "MyString"
    municipality "MyString"
    address_num "MyString"
    building_name "MyString"
    telephone "MyString"
    birth_day "2018-12-28"
    user_id 1
  end
end
