class CreateStageScores < ActiveRecord::Migration
  def change
    create_table :stage_scores do |t|
      t.integer :points_down, :default => 0, :null => false
      t.integer :no_shoots, :default => 0, :null => false
      t.integer :procedurals, :default => 0, :null => false
      t.time :shot_time, :null => false
      t.references :stage, :null => false
      t.references :shooter, :null => false

      t.timestamps
    end
  end
end
