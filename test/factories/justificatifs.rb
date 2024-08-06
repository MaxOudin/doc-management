# == Schema Information
#
# Table name: justificatifs
#
#  id                 :bigint           not null, primary key
#  justificatif_type  :integer          default("depense"), not null
#  status             :integer          default("attente"), not null
#  date_televersement :date
#  user_id            :bigint
#  montant            :integer
#  commentaire        :string
#  valide             :boolean          default(FALSE)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
FactoryBot.define do
  factory :justificatif do
    document_type { 1 }
    status { 1 }
    date_televersement { "2024-08-05" }
    user { nil }
  end
end
