class AddCoursecodeToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :coursecode, :string
  end
end
