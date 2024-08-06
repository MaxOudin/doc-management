FactoryBot.define do
  factory :invitation do
    message { "MyString" }
    date_envoi { "2024-08-05" }
    sender { nil }
    receiver { nil }
  end
end
