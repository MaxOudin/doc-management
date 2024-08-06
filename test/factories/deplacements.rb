FactoryBot.define do
  factory :deplacement do
    user { nil }
    affectation { nil }
    grand_deplacement { false }
    montant { 1 }
  end
end
