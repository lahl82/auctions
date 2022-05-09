# spec/factories.rb

FactoryBot.define do
  factory :bid do
    bidder_id { 1 }
    auction_id { 1 }
    amount { 1 }
  end

  factory :user do
    password { Faker::Internet.password }
    email { Faker::Internet.email }
  end

  factory :auction do
    title { Faker::Lorem.sentence } 
    description {Faker::Lorem.paragraph}
    start_date {Faker::Date.between(from: 50.days.ago, to: 1.days.ago)}
    end_date {Faker::Date.between(from: Date.today, to: 50.days.from_now)}
  end
end
