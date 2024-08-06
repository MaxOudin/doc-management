# == Schema Information
#
# Table name: notifies
#
#  id         :bigint           not null, primary key
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :notify do
    user { nil }
    message { "MyText" }
  end
end
