##
# Course model
class Course < ActiveRecord::Base
	##
	# A course has many scores, and belongs to a school.
	# Course names must be unique
	has_many :scores
	belongs_to :school

	validates_uniqueness_of :name

	filterrific(
		  default_filter_params: { sorted_by: 'name_desc' },
		  available_filters: [
		    :sorted_by,
		    :search_query,
		    :with_school_id,
		    :with_created_at_gte
		  ]
		)


end
