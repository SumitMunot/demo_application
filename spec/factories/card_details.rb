# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :card_detail do
    name_on_card "MyString"
    card_number 1
    card_expiry_date "2014-03-26"
    cvv 1
    user_id 1
  end
end
