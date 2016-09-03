FactoryGirl.define do
  factory :list do
    name Faker::Hipster.word
    user
  end
end
