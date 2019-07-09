FactoryBot.define do
  factory :user do
<<<<<<< HEAD
    name { FFaker::Lorem.word }
    email { FFaker::Internet.email }
    password { "secret123" }
  end
end
=======
    name         { FFaker::Lorem.word }
    email        { FFaker::Internet.email }
    password     {'secret123'}
  end
end
>>>>>>> controller_campaign
