FactoryBot.define do
  factory :member do
<<<<<<< HEAD
    name { FFaker::Lorem.word }
    email { FFaker::Internet.email }
    campaign
  end
end
=======
    name         { FFaker::Lorem.word }
    email        { FFaker::Internet.email }
    campaign
  end
end
>>>>>>> controller_campaign
