class Course < ApplicationRecord
  belongs_to :coding_class
  belongs_to :trimester
  has_many :enrollments

  delegate :title, to: :coding_class
  def student_name_list
    self.enrollments.map do |enrollment|
      "#{enrollment.student.first_name} #{enrollment.student.last_name}"
    end
  end
  
  def student_email_list
    self.enrollments.map do |enrollment|
      enrollment.student.email
    end
  end
