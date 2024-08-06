# == Schema Information
#
# Table name: admin0s
#
#  id         :bigint           not null, primary key
#  nom        :string
#  code       :string
#  longitude  :float
#  latitude   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class Admin0Test < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
