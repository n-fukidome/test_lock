class CreateBreeders < ActiveRecord::Migration
  def change
    create_table :breeders do |t|
      t.integer :species_id

      t.timestamps
    end
  end
end
