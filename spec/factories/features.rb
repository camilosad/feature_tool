FactoryGirl.define do
  factory :feature do
    name { 'Test Feature' }
    description { 'Description and details' }
    stakeholder { 'Stakeholder Name' }
    documentation { 'See http://www.google.com' }
    required_at { Time.zone.now }
    association :user
  end
end
