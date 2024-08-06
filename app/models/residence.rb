# == Schema Information
#
# Table name: residences
#
#  id         :bigint           not null, primary key
#  status     :integer          default(0), not null
#  date_debut :date
#  date_fin   :date
#  principale :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Residence < ApplicationRecord
  belongs_to :user

  has_one :adresse, as: :addressable, class_name: 'Adresse', dependent: :destroy
  has_one_attached :justif_residence, dependent: :destroy
end
