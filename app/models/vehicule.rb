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
class Vehicule < ApplicationRecord
  belongs_to :user

  validates :immatriculation, presence: true

  has_one_attached :permis, dependent: :destroy
  has_one_attached :carte_grise, dependent: :destroy
end
