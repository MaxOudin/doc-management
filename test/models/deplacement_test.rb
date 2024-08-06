# == Schema Information
#
# Table name: deplacements
#
#  id                 :bigint           not null, primary key
#  user_id            :bigint           not null
#  affectation_id     :bigint           not null
#  grand_deplacement  :boolean          default(FALSE)
#  montant            :integer
#  nb_km              :integer
#  status             :integer          default("attente"), not null
#  date_televersement :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require "test_helper"

class DeplacementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
