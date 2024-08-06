class Adresse < ApplicationRecord
  validates :code_postal, presence: true
end
