# == Schema Information
#
# Table name: sites
#
#  id         :bigint           not null, primary key
#  nom        :string
#  code       :string
#  longitude  :float
#  latitude   :float
#  admin1_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Site < ApplicationRecord
  belongs_to :admin1
  
  has_one :adresse, as: :addressable, class_name: 'Adresse', dependent: :destroy
  has_many :affectations, dependent: :destroy

  validates :nom, presence: true, uniqueness: true
  validates :code, presence: true
end
