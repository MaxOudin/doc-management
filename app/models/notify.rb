# == Schema Information
#
# Table name: notifies
#
#  id         :bigint           not null, primary key
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Notify < ApplicationRecord
  belongs_to :user
end
