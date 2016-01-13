class ChangeTypeToCreatures < ActiveRecord::Migration
  def change
    change_column :creatures, :animal_id, :integer
  end
end
