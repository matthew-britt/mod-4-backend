class CreateServiceUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :service_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
