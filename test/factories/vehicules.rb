# == Schema Information
#
# Table name: vehicules
#
#  id              :bigint           not null, primary key
#  immatriculation :string
#  nom             :string
#  prenom          :string
#  status          :integer          default(0), not null
#  user_id         :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :vehicule do
    user { nil }
  end
end
