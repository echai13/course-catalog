class CourseSubject < ApplicationRecord
  belongs_to :course
  belongs_to :subject

  def self.search(search1, search2)
    if search1.blank? && search2.blank?
      CourseSubject.all
    elsif search2.blank?
      CourseSubject.where("LOWER(coursename) LIKE ?", "%#{search1.downcase}%")
    elsif search1.blank?
      CourseSubject.where("subjectid LIKE ?", "%#{search2}%")
    else
      CourseSubject.where("LOWER(coursename) LIKE ? AND subjectid LIKE ?", "%#{search1.downcase}%", "%#{search2}%")
    end
  end

end
