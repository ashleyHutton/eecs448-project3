##
# Course model
class Course < ActiveRecord::Base
	##
	# A course has many scores, and belongs to a school.
	# Course names must be unique
	has_many :scores
	belongs_to :school


	filterrific(
		  default_filter_params: { sorted_by: 'name_desc' },
		  available_filters: [
		    :sorted_by,
		  ]
		)

	def self.options_for_select
	  order('LOWER(name)').map { |e| [e.name, e.id] }
	end


end
