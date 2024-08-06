# == Schema Information
#
# Table name: vehicules
#
#  id              :bigint           not null, primary key
#  immatriculation :string
#  nom             :string
#  prenom          :string
#  status          :integer          default(0), not null
#  user_id         :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class VehiculeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
