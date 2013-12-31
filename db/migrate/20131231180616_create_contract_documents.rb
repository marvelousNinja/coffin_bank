class CreateContractDocuments < ActiveRecord::Migration
  def change
    create_table :contract_documents do |t|
      t.integer :contract_id
      t.string :file

      t.timestamps
    end
  end
end
