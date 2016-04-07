
##
# Creates Scores database table
class CreateScores < ActiveRecord::Migration
  ##
  # Scores database table includes integer difficulty_rating, integer
  # workload_rating, integer likeability_rating, text comment, and
  # integer course_id
  # Note: The course_id links a specific scoring to a course in the
  # courses database table
  def change
    create_table :scores do |t|
      t.integer :difficulty_rating
      t.integer :workload_rating
      t.integer :likeability_rating
      t.text    :comment
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
