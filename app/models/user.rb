class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :nom, presence: true
  validates :prenom, presence: true

  has_many :affectations, dependent: :destroy
  has_many :sites, through: :affectations
  has_one :adresse, dependent: :destroy
  has_one :vehicule, dependent: :destroy
  has_many :deplacements, dependent: :destroy

end
