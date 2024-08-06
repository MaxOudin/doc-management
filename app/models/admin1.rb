class Admin1 < ApplicationRecord
  belongs_to :admin0
  has_many :sites
  has_one :adresse

  validates :code, presence: true, uniqueness: true
end
