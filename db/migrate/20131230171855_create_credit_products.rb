class CreateCreditProducts < ActiveRecord::Migration
  def change
    create_table :credit_products do |t|
      t.integer :id
      t.integer :percent
      t.decimal :min_sum
      t.decimal :max_sum
      t.integer :min_length
      t.integer :max_length

      t.timestamps
    end
  end
end
