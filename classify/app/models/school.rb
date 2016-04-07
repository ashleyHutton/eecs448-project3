##
# School Model
class School < ActiveRecord::Base
	##
	# School have many courses
	# School names must be unique
	has_many :courses

	validates_uniqueness_of :name
end
