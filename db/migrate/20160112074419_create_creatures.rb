class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :animal_id
      t.datetime :activation_until

      t.timestamps
    end
  end
end
