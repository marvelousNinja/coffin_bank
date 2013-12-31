class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false, unique: true
      t.integer :credit_product_id, null: false, unique: true
      t.decimal :sum, null: false, default: 0
      t.boolean :is_checked, null: false, default: false

      t.timestamps
    end

    add_index :orders, :user_id
    add_index :orders, :credit_product_id
  end
end
