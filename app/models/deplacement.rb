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
