# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    addressable_id 1
    addressable_type "MyString"
    line_1 "MyString"
    line_2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    phone "MyString"
  end
end
