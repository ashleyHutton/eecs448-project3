##
# Course model
class Course < ActiveRecord::Base
	##
	# A course has many scores, and belongs to a school.
	# Course names must be unique
	has_many :scores
	belongs_to :school
	validates :name, presence: true
	validates :school_id, presence: true

	filterrific(
		  default_filter_params: { sorted_by: 'name_asc' },
		  available_filters: [
		    :sorted_by,
		  ]
		)

	scope :sorted_by, lambda { |sort_option|
	# extract the sort direction from the param value.
		direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
		case sort_option.to_s
			when /^name_/
				order("LOWER(courses.name) #{ direction }")
			when /^difficulty_rating_/
				# Simple sort on the created_at column.
				# Make sure to include the table name to avoid ambiguous column names.
				# Joining on other tables is quite common in Filterrific, and almost
				# every ActiveRecord table has a 'created_at' column.
				order("courses.scores.average(:difficulty_rating) #{ direction }")
			when /^workload_rating_/
				# Simple sort on the name colums
				order("courses.scores.average(:workload_rating) #{ direction }")
			when /^likeability_rating_/
				# This sorts by a student's country name, so we need to include
				# the country. We can't use JOIN since not all students might have
				# a country.
				order("courses.scores.average(:likeability_rating) #{ direction }")
		else
			raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
		end
	}

  def self.options_for_sorted_by
    [
    	['Course Name (a-z)', 'name_asc'],
		['Least Difficult', 'difficulty_rating_asc'],
		['Least Workload', 'workload_rating_asc'],
		['Most Liked', 'likeability_rating_desc']
    ]
  end

end
