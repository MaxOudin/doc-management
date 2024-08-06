FactoryBot.define do
  factory :affectation do
    date_debut { "2024-08-05" }
    end_date { "2024-08-05" }
    active { false }
    document { nil }
    user { nil }
    site { nil }
  end
end
