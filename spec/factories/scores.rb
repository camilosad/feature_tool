FactoryGirl.define do
  factory :score do
    value { 1 }
    association :measure
    association :feature
    association :user
  end
end
