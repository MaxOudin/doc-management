class Admin1 < ApplicationRecord
  belongs_to :admin0
  
  has_one :adresse, as: :addressable, class_name: 'Adresse', dependent: :destroy
  has_many :sites

  validates :code, presence: true, uniqueness: true
end
