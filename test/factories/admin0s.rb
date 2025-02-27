# == Schema Information
#
# Table name: admin0s
#
#  id         :bigint           not null, primary key
#  nom        :string
#  code       :string
#  longitude  :float
#  latitude   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :admin0 do
    longitude { 1.5 }
    latitude { 1.5 }
  end
end
