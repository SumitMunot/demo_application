# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shipping_detail do
    full_address_name "MyString"
    address_line_one "MyString"
    address_line_two "MyString"
    city_town "MyString"
    state "MyString"
    zip "MyString"
    country "MyString"
    user_id 1
  end
end
