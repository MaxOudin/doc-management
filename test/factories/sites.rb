# == Schema Information
#
# Table name: sites
#
#  id         :bigint           not null, primary key
#  nom        :string
#  code       :string
#  longitude  :float
#  latitude   :float
#  admin1_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :site do
    nom { "MyString" }
    code { 1 }
    admin1 { nil }
    adresse { nil }
  end
end
