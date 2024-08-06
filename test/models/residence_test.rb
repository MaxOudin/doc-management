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
require "test_helper"

class ResidenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
