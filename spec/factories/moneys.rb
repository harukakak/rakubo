FactoryBot.define do
  factory :money do
    year                      { 3 }
    month                     { 2 }
    income_account_name       { Faker::Name.initials(number: 2) }
    income_account2_name      { Faker::Name.initials(number: 2) }
    payment_account1_money    { Faker::Number.number(digits: 5) }
    payment_account2_money    { Faker::Number.number(digits: 5) }
    payment_account3_money    { Faker::Number.number(digits: 5) }
    income_money              { Faker::Number.number(digits: 5) }
    income2_money             { Faker::Number.number(digits: 5) }
    payment1_money            { Faker::Number.number(digits: 5) }
    payment2_money            { Faker::Number.number(digits: 5) }
    payment3_money            { Faker::Number.number(digits: 5) }
    payment4_money            { Faker::Number.number(digits: 5) }
    payment5_money            { Faker::Number.number(digits: 5) }
    payment6_money            { Faker::Number.number(digits: 5) }
    payment7_money            { Faker::Number.number(digits: 5) }
    payment8_money            { Faker::Number.number(digits: 5) }
    payment9_money            { Faker::Number.number(digits: 5) }
    payment11_money           { Faker::Number.number(digits: 5) }
    payment11_money           { Faker::Number.number(digits: 5) }
    payment12_money           { Faker::Number.number(digits: 5) }
    payment13_money           { Faker::Number.number(digits: 5) }
    payment14_money           { Faker::Number.number(digits: 5) }
    payment15_money           { Faker::Number.number(digits: 5) }
    payment16_money           { Faker::Number.number(digits: 5) }
    item_name1_id             { 2 }
    item_name2_id             { 2 }
    item_name3_id             { 2 }
    item_name4_id             { 2 }
    item_name5_id             { 2 }
    item_name6_id             { 2 }
    item_name7_id             { 2 }
    item_name8_id             { 2 }
    item_name9_id             { 2 }
    item_name10_id            { 2 }
    item_name11_id            { 2 }
    item_name12_id            { 2 }
    item_name13_id            { 2 }
    item_name1_self           { Faker::Name.initials(number: 2) }
    item_name2_self           { Faker::Name.initials(number: 2) }
    item_name3_self           { Faker::Name.initials(number: 2) }
    association :user
  end
end