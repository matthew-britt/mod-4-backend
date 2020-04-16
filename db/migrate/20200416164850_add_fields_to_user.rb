class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :longitude, :decimal
    add_column :users, :latitude, :decimal
  end
end
