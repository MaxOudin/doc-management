class Adresse < ApplicationRecord
  validates :code_postal, presence: true

  belongs_to :addressable, polymorphic: true
end
