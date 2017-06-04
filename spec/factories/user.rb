FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "user_#{n}" }
    sequence(:access_token) { SecureRandom.hex(20) }
  end
end
