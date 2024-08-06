# == Schema Information
#
# Table name: justificatifs
#
#  id                 :bigint           not null, primary key
#  justificatif_type  :integer          default("permis_conduire"), not null
#  status             :integer          default("attente"), not null
#  date_televersement :date
#  user_id            :bigint
#  montant            :integer
#  commentaire        :string
#  valide             :boolean          default(FALSE)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Justificatif < ApplicationRecord
  belongs_to :user

  validates :justificatif_type, presence: true
  validates :status, presence: true

  has_one_attached :file

  enum justificatif_type: { depense: 0, autre: 1 }
  enum status: { attente: 0, verifie: 1, rejete: 2 }
end
