FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user-#{n}@example.com" }
    password 'trust_no_one'
    password_confirmation 'trust_no_one'
    last_sign_in_at 5.minutes.ago
    sign_in_count 1
  end
end
