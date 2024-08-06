class Deplacement < ApplicationRecord
  belongs_to :user
  belongs_to :affectation

  has_one_attached :file, dependent: :destroy
end
