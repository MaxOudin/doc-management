# == Schema Information
#
# Table name: adresses
#
#  id               :bigint           not null, primary key
#  addressable_type :string
#  addressable_id   :bigint
#  nom              :string
#  code             :string
#  longitude        :float
#  latitude         :float
#  numero           :integer
#  rue              :string
#  rue_2            :string
#  code_postal      :integer
#  ville            :string
#  pays             :string
#  principale       :boolean          default(FALSE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class AdresseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
