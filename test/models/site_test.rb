# == Schema Information
#
# Table name: sites
#
#  id         :bigint           not null, primary key
#  nom        :string
#  code       :string
#  longitude  :float
#  latitude   :float
#  admin1_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class SiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
