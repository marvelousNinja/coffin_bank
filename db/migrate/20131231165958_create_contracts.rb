class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :order_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
