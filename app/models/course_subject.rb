class CourseSubject < ApplicationRecord
  belongs_to :course
  belongs_to :subject

  def self.search(search1, search2)
    if search2.blank?
      CourseSubject.where("LOWER(coursename) LIKE ?", "%#{search1.downcase}%")
    elsif search1.blank?
      CourseSubject.where("LOWER(subject_id) ILIKE ?", "%#{search2.downcase}%")
    else
      CourseSubject.where("LOWER(coursename) LIKE ? AND LOWER(subject_id) LIKE ?", "%#{search1.downcase}%", "%#{search2.downcase}%")
    end
  end

end
