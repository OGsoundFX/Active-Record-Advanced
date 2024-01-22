class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true, length: { minimum: 3, maximum: 20 }
  validates :first_name, presence: true

  # validates :last_name, uniqueness: { scope: :first_name}
  validates :first_name, uniqueness: { scope: :last_name}

  def todays_patients
    Patient.joins(:consultations).where(consultations: { doctor: self, date: Date.today }).distinct
  end
end
