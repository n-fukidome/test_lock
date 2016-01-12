class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :breeder_id
      t.datetime :recipted_on

      t.timestamps
    end
  end
end
