class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :order_id, null:false
      t.date :start_date, null:false
      t.date :end_date, null:false

      t.timestamps
    end

    add_index :contracts, :order_id
  end
end
