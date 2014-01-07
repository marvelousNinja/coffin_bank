class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :middle_name, null: false
      t.string :last_name, null: false
      t.string :passport_series, null: false
      t.string :passport_number, null: false
      t.string :phone_number, null: false

      t.timestamps
    end
  end
end
