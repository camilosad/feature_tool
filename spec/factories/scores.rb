FactoryGirl.define do
  factory :score do
    value { 3 }
    association :measure
    association :feature
    association :user
  end
end
