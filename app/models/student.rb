class Student < ApplicationRecord
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :age,         presence: true, numericality: { less_than: 150 }
  validates :education,   presence: true

  has_and_belongs_to_many :cohorts, optional: true

  def student_full_name
    "#{first_name} #{last_name}"
  end

end
