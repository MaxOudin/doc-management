class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.integer :document_type, null: false
      t.integer :status, null: false
      t.date :date_televersement
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :documents, :document_type
    add_index :documents, :status
  end
end
