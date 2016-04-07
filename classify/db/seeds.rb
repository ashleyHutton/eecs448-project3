##
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create( name: 'Chicago' ,  name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)


school1 = School.create(name: 'Lawrence High')
school2 = School.create(name: 'Freestate')
school3 = School.create(name: 'Andover Central')
school4 = School.create(name: 'Junction City')

course1 = Course.create(name: 'Prgramming', school_id: 1 )
course2 = Course.create(name: 'History', school_id: 2 )
course3 = Course.create(name: 'Geometry', school_id: 2 )
course4 = Course.create(name: 'Cooking 1', school_id: 3 )
course5 = Course.create(name: 'Sewing', school_id: 4 )
course6 = Course.create(name: 'Anatomy', school_id: 4 )

score1 = Score.create(difficulty_rating: '3', workload_rating: '3', likeability_rating: '3',
	comment: 'This class was a-okay', course_id: '1')
score2 = Score.create(difficulty_rating: '1', workload_rating: '1', likeability_rating: '1',
	comment: 'This class sucked eggs', course_id: '2')
score3 = Score.create(difficulty_rating: '5', workload_rating: '5', likeability_rating: '5',
	comment: 'This class was my fave. ', course_id: '3')
score4 = Score.create(difficulty_rating: '5', workload_rating: '5', likeability_rating: '1',
	comment: 'Not a lot of work but I did not like it', course_id: '4')
score5 = Score.create(difficulty_rating: '2', workload_rating: '2', likeability_rating: '2',
	comment: 'This course was eh', course_id: '5')
score6 = Score.create(difficulty_rating: '4', workload_rating: '4', likeability_rating: '4',
	comment: 'Pretty good pretty good', course_id: '6')
score7 = Score.create(difficulty_rating: '3', workload_rating: '3', likeability_rating: '3',
	comment: 'This class was a-okay', course_id: '1')
score8 = Score.create(difficulty_rating: '1', workload_rating: '1', likeability_rating: '3',
	comment: 'I liked it but it was super hard', course_id: '2')
