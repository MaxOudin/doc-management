class Document < ApplicationRecord
  belongs_to :user

  enum document_type: { permis_conduire: 0, justificatif_residence: 1, justificatif_depenses: 2, autre: 3 }
  enum status: { attente: 0, verifie: 1, rejete: 2 }

  validates :document_type, presence: true
  validates :status, presence: true

  has_one_attached :file
end
