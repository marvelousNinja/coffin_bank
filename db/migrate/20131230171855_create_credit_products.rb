class CreateCreditProducts < ActiveRecord::Migration
  def change
    create_table :credit_products do |t|
      t.integer :percent, null: false
      t.integer :delay_percent, null: false
      t.decimal :min_sum, null: false
      t.decimal :max_sum, null: false
      t.integer :min_length, null: false
      t.integer :max_length, null: false

      t.timestamps
    end
  end
end
