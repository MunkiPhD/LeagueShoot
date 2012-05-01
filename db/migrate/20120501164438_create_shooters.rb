class CreateShooters < ActiveRecord::Migration
  def change
    create_table :shooters do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
