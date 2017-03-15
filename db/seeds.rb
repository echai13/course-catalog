# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

json = JSON.parse(File.read('db/instructor.json'))

json.each do |a|
  Instructor.create(:lastname => a["last"], :firstname => a["first"], :email => a["email"])
end


json = JSON.parse(File.read('db/course.json'))

json.each do |a|
  Course.create(:name => a["name"], :description => a["description"], :coursecode => a["code"])
end


json = JSON.parse(File.read('db/subject.json'))

json.each do |a|
  Subject.create(:name => a["name"], :subjectid => a["id"])
end
