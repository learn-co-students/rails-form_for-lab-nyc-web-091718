# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.create(title: 'English', room_number: 2)
SchoolClass.create(title: 'Math', room_number: 1)

Student.create(first_name: "Billy", last_name: "Beane")
Student.create(first_name: "Emma", last_name: "T")
