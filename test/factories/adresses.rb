FactoryBot.define do
  factory :adresse do
    numero { 1 }
    rue { "MyString" }
    rue_2 { "MyString" }
    code_postal { 1 }
    ville { "MyString" }
    pays { "MyString" }
    principale { false }
  end
end
