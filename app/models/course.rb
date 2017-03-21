class Course < ApplicationRecord
  has_many :course_subjects
  has_many :subjects, through: :course_subjects
  has_many :enrollments
  has_many :users, through: :enrollments

  # def self.search(search1, search2)
  #   # Course.joins(:subjects).where("name LIKE ?", "%#{search1}%").where("subjects.name LIKE ?", "%#{search2}%")
  #   # where("name LIKE ?", "%#{search}%")
  #   Course.joins(:subjects).where("courses.name LIKE ? AND subjects.id LIKE ?", "%#{search1}%", "%#{search2}%")
  #   # CourseSubject.where("coursename LIKE ? AND subject_id LIKE ?", "%#{search1}%", "%#{search2}%")
  # end


end
