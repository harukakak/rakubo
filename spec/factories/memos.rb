FactoryBot.define do
  factory :memo do
    target              { Faker::Name.initials(number: 2) }
    text                { Faker::Name.initials(number: 2) }
    association :user
  end
end