class CreateJustificatifs < ActiveRecord::Migration[7.1]
  def change
    create_table :justificatifs do |t|
      t.integer :justificatif_type, null: false, default: 0
      t.integer :status, null: false, default: 0
      t.date :date_televersement
      t.references :user, foreign_key: true
      t.integer :montant
      t.string :commentaire
      t.boolean :valide, default: false

      t.timestamps
    end

    add_index :justificatifs, :justificatif_type
    add_index :justificatifs, :status
  end
end
