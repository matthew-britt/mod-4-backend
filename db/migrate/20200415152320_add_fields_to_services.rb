class AddFieldsToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :provided_by, :string
    add_column :services, :phone, :string
    add_column :services, :email, :string
  end
end
