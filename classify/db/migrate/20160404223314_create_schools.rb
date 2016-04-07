
##
# Creates Schools database table
class CreateSchools < ActiveRecord::Migration
  ##
  # Schools database table includes a string name
  def change
    create_table :schools do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
