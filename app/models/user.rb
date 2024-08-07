# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  nom                    :string
#  prenom                 :string
#  date_naissance         :date
#  role                   :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :nom, presence: true
  validates :prenom, presence: true
  validates :date_naissance, presence: true

  has_one :vehicule, dependent: :destroy
  has_many :affectations, dependent: :destroy
  has_many :sites, through: :affectations
  has_many :deplacements, dependent: :destroy

  has_many :residences, dependent: :destroy

end
