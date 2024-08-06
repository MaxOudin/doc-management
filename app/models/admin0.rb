class Admin0 < ApplicationRecord
  has_many :admin1s
  has_many :sites, through: :admin1s
  has_one :adresse
end
