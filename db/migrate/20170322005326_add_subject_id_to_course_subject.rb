class AddSubjectIdToCourseSubject < ActiveRecord::Migration[5.0]
  def change
    add_column :course_subjects, :subjectid, :string
  end
end
