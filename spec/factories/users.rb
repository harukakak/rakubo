FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
    end

    nick_name             { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Lorem.characters(number: 8, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
  end
end