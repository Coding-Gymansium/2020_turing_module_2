class Student < ApplicationRecord
  has_many :student_courses
  has_many :courses, through: :student_courses

  validates :name, :age, :house, presence: true

  def self.students_average_ages
    Student.average(:age)
  end
end
