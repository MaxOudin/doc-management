class Site < ApplicationRecord
  belongs_to :admin1
  
  has_one :adresse, as: :addressable, class_name: 'Adresse', dependent: :destroy
  has_many :affectations, dependent: :destroy

  validates :nom, presence: true, uniqueness: true
  validates :code, presence: true
end
