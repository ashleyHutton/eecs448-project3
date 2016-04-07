##
# Creates Courses database table
class CreateCourses < ActiveRecord::Migration
  def change
    ##
    # Courses database table includes string name and integer school_id
    # Note: The school_id links a specific course to a school in the Schools
    # database table.
    create_table :courses do |t|
      t.string :name
      t.integer :school_id

      t.timestamps null: false
    end
  end
end
