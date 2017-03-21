class CourseSubject < ApplicationRecord
  belongs_to :course
  belongs_to :subject

  def self.search(search1, search2)
    if search2.blank?
      CourseSubject.where("coursename ILIKE ?", "%#{search1}%")
    elsif search1.blank?
      CourseSubject.where("subject_id ILIKE ?", "%#{search2}%")
    else
      CourseSubject.where("coursename ILIKE ? AND subject_id ILIKE ?", "%#{search1}%", "%#{search2}%")
    end
  end

end
