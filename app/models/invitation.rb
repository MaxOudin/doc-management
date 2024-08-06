class Invitation < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  validates :message, presence: true
  validates :date_envoi, presence: true
  validates :sender_id, presence: true
  validates :receiver_id, presence: true
end
