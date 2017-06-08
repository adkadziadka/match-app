class Match < ApplicationRecord
  belongs_to :first_student_id, class_name: Student
  belongs_to :second_student_id, class_name: Student

  validates :first_student_id, presence: true
  validates :second_student_id, presence: true



end
