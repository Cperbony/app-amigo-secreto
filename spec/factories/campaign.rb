# frozen_string_literal: true

FactoryBot.define do
  factory :campaign do
    title         { FFaker::Lorem.word }
    description   { FFaker::Lorem.sentence }
    user
    status { :pending }
    location do
      "#{FFaker::Address.city},
    #{FFaker::Address.street_address}"
    end
    event_date    { FFaker::Time.date }
    event_hour    { rand(24).to_s }
  end
end
