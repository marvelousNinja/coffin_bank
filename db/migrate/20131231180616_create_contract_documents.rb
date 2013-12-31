class CreateContractDocuments < ActiveRecord::Migration
  def change
    create_table :contract_documents do |t|
      t.integer :contract_id, null: false
      t.string :file, null: false

      t.timestamps
    end

    add_index :contract_documents, :contract_id
  end
end
