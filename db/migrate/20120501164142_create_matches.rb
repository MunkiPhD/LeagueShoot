class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :title, :null => false
      t.date :match_date, :null => false

      t.timestamps
    end
  end
end
