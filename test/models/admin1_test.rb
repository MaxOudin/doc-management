# == Schema Information
#
# Table name: admin1s
#
#  id         :bigint           not null, primary key
#  nom        :string
#  code       :string
#  longitude  :float
#  latitude   :float
#  admin0_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class Admin1Test < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
