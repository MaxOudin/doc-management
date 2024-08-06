# == Schema Information
#
# Table name: relances
#
#  id          :bigint           not null, primary key
#  message     :text
#  date_envoi  :date
#  sender_id   :bigint           not null
#  receiver_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Relance < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  validates :message, presence: true
  validates :sender_id, presence: true
  validates :receiver_id, presence: true
end
