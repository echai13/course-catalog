class CourseSubject < ApplicationRecord
  belongs_to :course
  belongs_to :subject

  def self.search(search1, search2)
    if search2.blank?
      CourseSubject.where("coursename LIKE ?", "%#{search1}%")
    elsif search1.blank?
      CourseSubject.where("subject_id LIKE ?", "%#{search2}%")
    else
      CourseSubject.where("coursename LIKE ? AND subject_id LIKE ?", "%#{search1}%", "%#{search2}%")
    end
  end

end
