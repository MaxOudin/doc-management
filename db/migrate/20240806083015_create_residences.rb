class CreateResidences < ActiveRecord::Migration[7.1]
  def change
    create_table :residences do |t|
      t.integer :status, null: false, default: 0
      t.date :date_debut
      t.date :date_fin
      t.boolean :principale, default: false

      t.timestamps
    end
  end
end
