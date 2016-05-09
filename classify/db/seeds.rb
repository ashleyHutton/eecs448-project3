##
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create( name: 'Chicago' ,  name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)

school2 = School.create(name: 'Freestate')
school3 = School.create(name: 'Andover Central')
school4 = School.create(name: 'Junction City')

course1 = Course.create(name: 'Prgramming', school_id: School.first.id )
course2 = Course.create(name: 'History', school_id: School.first.id )
course3 = Course.create(name: 'Geometry', school_id: School.first.id )
course4 = Course.create(name: 'Cooking 1', school_id: School.first.id )
course5 = Course.create(name: 'Sewing', school_id: School.first.id )
course6 = Course.create(name: 'Anatomy', school_id: School.first.id )
