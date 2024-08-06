class Vehicule < ApplicationRecord
  belongs_to :user

  validates :immatriculation, presence: true
end
