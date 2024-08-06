class CreateDeplacements < ActiveRecord::Migration[7.1]
  def change
    create_table :deplacements do |t|
      t.references :user, null: false, foreign_key: true
      t.references :affectation, null: false, foreign_key: true
      t.boolean :grand_deplacement, default: false
      t.integer :montant
      t.integer :nb_km
      t.integer :status, null: false, default: 0
      t.date :date_televersement

      t.timestamps
    end
  end
end
