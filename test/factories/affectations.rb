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
FactoryBot.define do
  factory :affectation do
    date_debut { "2024-08-05" }
    end_date { "2024-08-05" }
    active { false }
    document { nil }
    user { nil }
    site { nil }
  end
end
