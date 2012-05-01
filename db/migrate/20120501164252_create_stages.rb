class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.integer :number_of_targets, :null => false, :default => 1
      t.references :match, :null => false

      t.timestamps
    end
  end
end
