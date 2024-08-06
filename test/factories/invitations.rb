# == Schema Information
#
# Table name: invitations
#
#  id          :bigint           not null, primary key
#  message     :text
#  date_envoi  :date
#  sender_id   :bigint           not null
#  receiver_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :invitation do
    message { "MyString" }
    date_envoi { "2024-08-05" }
    sender { nil }
    receiver { nil }
  end
end
