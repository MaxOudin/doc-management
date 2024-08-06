class Site < ApplicationRecord
  belongs_to :admin1
  has_one :adresse, dependent: :destroy

  validates :nom, presence: true, uniqueness: true
  validates :code, presence: true
end
