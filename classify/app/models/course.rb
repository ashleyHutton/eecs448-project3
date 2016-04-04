class Course < ActiveRecord::Base
	has_many :scores
	belongs_to :school

	validates_uniqueness_of :name

end
