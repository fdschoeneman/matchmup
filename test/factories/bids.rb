# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bid do
    bidder_id 1
    demo_id 1
    amendments "MyString"
    accepted false
  end
end
