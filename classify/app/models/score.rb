class Score < ActiveRecord::Base
	belongs_to :course 

	validates_inclusion_of		:difficulty_rating, :in => 1..5
	validates_inclusion_of		:likeability_rating, :in => 1..5
	validates_inclusion_of		:workload_rating, :in => 1..5

end
