class CreateMatchData < ActiveRecord::Migration
  def change
    create_table :match_data do |t|
      t.string :squad, :null => false
      t.integer :lineup_position, :null => false
      t.references :match, :null => false
      t.references :shooter, :null => false
      t.references :division, :null => false

      t.timestamps
    end
  end
end
