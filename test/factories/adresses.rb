# == Schema Information
#
# Table name: adresses
#
#  id               :bigint           not null, primary key
#  addressable_type :string
#  addressable_id   :bigint
#  nom              :string
#  code             :string
#  longitude        :float
#  latitude         :float
#  numero           :integer
#  rue              :string
#  rue_2            :string
#  code_postal      :integer
#  ville            :string
#  pays             :string
#  principale       :boolean          default(FALSE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
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
