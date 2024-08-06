# == Schema Information
#
# Table name: affectations
#
#  id         :bigint           not null, primary key
#  date_debut :date
#  date_fin   :date
#  active     :boolean          default(FALSE)
#  user_id    :bigint           not null
#  site_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class AffectationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
