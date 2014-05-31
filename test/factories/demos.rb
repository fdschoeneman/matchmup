# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :demo do
    contractor_id 1
    client_id 1
    facilitator_id 1
    venue_id 1
    aasm_state "MyString"
  end
end
