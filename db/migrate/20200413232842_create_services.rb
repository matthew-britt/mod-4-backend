class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end
