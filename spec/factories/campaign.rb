FactoryBot.define do
  factory :campaign do
<<<<<<< HEAD
    title { FFaker::Lorem.word }
    description { FFaker::Lorem.sentence }
    user
    status { :pending }
    location { "#{FFaker::Address.city}, #{FFaker::Address.street_address}" }
    event_date { FFaker::Time.date }
    event_hour { rand(24).to_s }
  end
end
=======
    title         { FFaker::Lorem.word }
    description   { FFaker::Lorem.sentence }
    user
  end
end
>>>>>>> controller_campaign
