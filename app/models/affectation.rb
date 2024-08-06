class Affectation < ApplicationRecord
  belongs_to :user
  belongs_to :site

  has_one :adresse_site, through: :site, source: :adresse
  has_one :admin1, through: :site

  validates :user_id, presence: true
  validates :site_id, presence: true
  validates :date_debut, presence: true
  validates :end_date, presence: true
  validate :date_debut_before_end_date

  before_save :affectation_terminee

  scope :actives, -> { where(active: true) }
  scope :terminees, -> { where('end_date < ?', Date.today) }

  private

  def date_debut_before_end_date
    return if end_date.blank? || date_debut.blank?

    if date_debut > end_date
      errors.add(:date_debut, "doit être avant la date de fin")
    end
  end

  def affectation_terminee
    self.active = false if end_date < Date.today || date_debut > Date.today
    self.active = true if Date.today < end_date && date_debut <= Date.today
  end
end
