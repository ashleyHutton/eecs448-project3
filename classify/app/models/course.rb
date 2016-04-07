##
# Course model
class Course < ActiveRecord::Base
	##
	# A course has many scores, and belongs to a school.
	# Course names must be unique
	has_many :scores
	belongs_to :school

	validates_uniqueness_of :name

end
