class AddNameToStage < ActiveRecord::Migration
  def change
    add_column :stages, :name, :string, :null => false, :default => ""
  end
end
