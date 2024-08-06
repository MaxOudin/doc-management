# == Schema Information
#
# Table name: admin0s
#
#  id         :bigint           not null, primary key
#  nom        :string
#  code       :string
#  longitude  :float
#  latitude   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Admin0 < ApplicationRecord
  has_one :adresse, as: :addressable, class_name: 'Adresse', dependent: :destroy
  has_many :admin1s
  has_many :sites, through: :admin1s
end
