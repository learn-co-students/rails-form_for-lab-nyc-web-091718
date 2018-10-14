# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Sammy", last_name: "Casas")
Student.create(first_name: "Joplin", last_name: "Casas")
Student.create(first_name: "Sadie", last_name: "Casas")
Student.create(first_name: "Marilyn", last_name: "Casas")

SchoolClass.new(title: "Data Science", room_number: 435)
SchoolClass.new(title: "Science", room_number: 444)
SchoolClass.new(title: "History", room_number: 335)
