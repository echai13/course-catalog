# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# json = JSON.parse(File.read('db/instructor.json'))
#
# json.each do |a|
#   Instructor.create(:lastname => a["last"], :firstname => a["first"], :email => a["email"])
# end
#
#
# json = JSON.parse(File.read('db/course.json'))
#
# json.each do |a|
#   Course.create(:name => a["name"], :description => a["description"], :coursecode => a["code"], :subjectid => a["subjects"][0]["id"])
# end
#
#
# json = JSON.parse(File.read('db/subject.json'))
#
# json.each do |a|
#   Subject.create(:name => a["name"], :subjectid => a["id"])
# end

# Course.all.each do |c|
#   CourseSubject.create!(:course_id => c.id, :subject_id => Subject.all.find_by_subjectid(c.subjectid))
# end


Course.all.each do |c|
  Subject.all.each do |s|
    if c.subjectid == s.subjectid
      CourseSubject.create!(:course_id => c.id, :subject_id => s.id, :coursename => c.name)
    end
  end
end
