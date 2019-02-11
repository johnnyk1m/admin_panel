class Course < ApplicationRecord
  validates :name,  presence: true
  validates :hours, presence: true, numericality: { greater_than: 0 }

  has_many :cohorts

end
