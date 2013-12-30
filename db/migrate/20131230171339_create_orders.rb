class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :id
      t.integer :user_id
      t.integer :credit_product_id
      t.decimal :sum
      t.boolean :is_checked

      t.timestamps
    end
  end
end
