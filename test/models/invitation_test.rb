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
require "test_helper"

class InvitationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
