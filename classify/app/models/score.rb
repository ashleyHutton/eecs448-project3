##
# Score Model
class Score < ActiveRecord::Base
	##
	# Scores belong to courses
	# A Score's difficulty_rating must be between 1 and 5
	# A Score's likeability_rating must be between 1 and 5
	# A Score's workload_rating must be between 1 and 5

	belongs_to :course

	validates :course_id, presence: true
	validates_inclusion_of		:difficulty_rating, :in => 1..5
	validates_inclusion_of		:likeability_rating, :in => 1..5
	validates_inclusion_of		:workload_rating, :in => 1..5

	scope :sorted_by, -> (id) { where(:id => id) }


	filterrific(
	  default_filter_params: { sorted_by: 'created_at_desc' },
	  available_filters: [
	    :sorted_by,
	    :with_course_id,
	  ]
	)

	  scope :sorted_by, lambda { |sort_option|
			# extract the sort direction from the param value.
			direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
			case sort_option.to_s
				#when /^name_/
				#order("scores.name #{direction}")
				when /^created_at_/
				# Simple sort on the created_at column.
				# Make sure to include the table name to avoid ambiguous column names.
				# Joining on other tables is quite common in Filterrific, and almost
				# every ActiveRecord table has a 'created_at' column.
				order("scores.created_at #{ direction }")
				when /^rating_/
				# Simple sort on the name colums
				order("(scores.difficulty_rating) #{ direction }, (scores.likeability_rating) #{ direction }, (scores.workload_rating) #{ direction}")
				when /^course_name_/
					# This sorts by a student's country name, so we need to include
					# the country. We can't use JOIN since not all students might have
					# a country.
					order("(courses.name) #{ direction }").includes(:courses)
				#when /^school_name_/
					#order("(schools.name) #{ direction }").includes(:schools)

			  else
			    raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
			  end
		  }

	  scope :with_course_id, lambda { |course_ids|
	    # Filters scores with any of the given course_ids
	    where(course_id: [Course.where(school_id: current_user.school_id)])
	    
	  }
	 # scope :with_school_id, lambda { |school_ids|
	    # Filters scores with any of the given school_ids
	 #   where(school_id: [*school_ids])
	 # }
	  #scope :with_created_at_gte, lambda { |ref_date|
	  #  ...
	  #}

	  # This method provides select options for the `sorted_by` filter select input.
	  # It is called in the controller as part of `initialize_filterrific`.
	  def self.options_for_sorted_by
	    [
	      #['Name (a-z)', 'name_asc'],
	      ['Newest Scores', 'created_at_desc'],
	      ['Oldest Scores', 'created_at_asc'],
	      #['Course (a-z)', 'course_name_asc']
	    ]
	  end

end
