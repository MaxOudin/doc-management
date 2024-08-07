# == Schema Information
#
# Table name: admin1s
#
#  id         :bigint           not null, primary key
#  nom        :string
#  code       :string
#  longitude  :float
#  latitude   :float
#  admin0_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Admin1 < ApplicationRecord
  belongs_to :admin0

  has_many :sites

  validates :code, presence: true, uniqueness: true
end
