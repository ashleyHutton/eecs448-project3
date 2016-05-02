class AddCreatorToScore < ActiveRecord::Migration
  def change
    add_column :scores, :creator_id, :integer
  end
end
