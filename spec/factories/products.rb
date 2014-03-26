# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    title "MyString"
    description "MyText"
    price "9.99"
    category "MyString"
    subcategory "MyString"
    brand "MyString"
    unit "MyString"
  end
end
