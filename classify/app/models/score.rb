##
# Score Model
class Score < ActiveRecord::Base
	##
	# Scores belong to courses
	# A Score's difficulty_rating must be between 1 and 5
	# A Score's likeability_rating must be between 1 and 5
	# A Score's workload_rating must be between 1 and 5

	belongs_to :course

	validates_inclusion_of		:difficulty_rating, :in => 1..5
	validates_inclusion_of		:likeability_rating, :in => 1..5
	validates_inclusion_of		:workload_rating, :in => 1..5

end
