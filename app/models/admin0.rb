class Admin0 < ApplicationRecord
  has_one :adresse, as: :addressable, class_name: 'Adresse', dependent: :destroy
  has_many :admin1s
  has_many :sites, through: :admin1s
end
