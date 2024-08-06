# == Schema Information
#
# Table name: justificatifs
#
#  id                 :bigint           not null, primary key
#  justificatif_type  :integer          default("permis_conduire"), not null
#  status             :integer          default("attente"), not null
#  date_televersement :date
#  user_id            :bigint
#  montant            :integer
#  commentaire        :string
#  valide             :boolean          default(FALSE)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require "test_helper"

class JustificatifTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
