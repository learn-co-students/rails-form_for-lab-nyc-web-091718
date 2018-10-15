# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Student.create(first_name: "Shelby", last_name: "Trinca")
Student.create(first_name: "Mason", last_name: "Trinca")
Student.create(first_name: "Lindsay", last_name: "Trinca")
Student.create(first_name: "Harrison", last_name: "Trinca")
Student.create(first_name: "Jackson", last_name: "Trinca")


SchoolClass.create(title: "History", room_number: 12)
SchoolClass.create(title: "Science", room_number: 12)
SchoolClass.create(title: "AP English", room_number: 12)
SchoolClass.create(title: "PE", room_number: 12)
SchoolClass.create(title: "Math", room_number: 12)
