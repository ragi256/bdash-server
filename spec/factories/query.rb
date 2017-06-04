FactoryGirl.define do
  factory :query do
    association :user, factory: :user
    sequence(:title) { |n| "title_#{n}" }
    sequence(:uuid) { SecureRandom.uuid }
  end
end
