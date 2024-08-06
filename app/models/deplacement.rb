# == Schema Information
#
# Table name: deplacements
#
#  id                 :bigint           not null, primary key
#  user_id            :bigint           not null
#  affectation_id     :bigint           not null
#  grand_deplacement  :boolean          default(FALSE)
#  montant            :integer
#  nb_km              :integer
#  status             :integer          default("attente"), not null
#  date_televersement :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Deplacement < ApplicationRecord
  belongs_to :user
  belongs_to :affectation

  has_one :adresse_user, -> { where(addressable_type: 'User') }, as: :addressable, class_name: 'Adresse'
  has_one :adresse_affectation_site, -> { where(addressable_type: 'Site') }, as: :addressable, class_name: 'Adresse'

  has_one_attached :file, dependent: :destroy

  enum status: { attente: 0, verifie: 1, rejete: 2 }

  def nb_km
    return 0 unless adresse_user && adresse_affectation_site

    # Calcul de la distance entre les deux adresses
  end
end
