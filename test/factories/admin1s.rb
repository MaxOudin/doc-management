# == Schema Information
#
# Table name: admin1s
#
#  id         :bigint           not null, primary key
#  nom        :string
#  code       :string
#  longitude  :float
#  latitude   :float
#  admin0_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :admin1 do
    longitude { 1.5 }
    latitude { 1.5 }
    nom { "MyString" }
    code { "MyString" }
  end
end
