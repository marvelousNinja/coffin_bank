class CreatePlanPays < ActiveRecord::Migration
  def change
    create_table :plan_pays do |t|
      t.date :pay_day, null: false
      t.decimal :sum, null: false
      t.boolean :is_extinguished, null: false

      t.timestamps
    end

    add_index :plan_pays, :pay_day
    add_index :plan_pays, :is_extinguished
  end
end
