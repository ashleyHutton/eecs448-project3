class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :difficulty_rating
      t.integer :workload_rating
      t.integer :likeability_rating
      t.text_area :comment
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
