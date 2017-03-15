class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :instructor
      t.string :subjectid

      t.timestamps
    end
  end
end
