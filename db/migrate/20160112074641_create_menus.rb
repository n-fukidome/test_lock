class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :meal_id
      t.string :content

      t.timestamps
    end
  end
end
