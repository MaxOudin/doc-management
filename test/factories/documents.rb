FactoryBot.define do
  factory :document do
    document_type { 1 }
    status { 1 }
    date_televersement { "2024-08-05" }
    user { nil }
  end
end
