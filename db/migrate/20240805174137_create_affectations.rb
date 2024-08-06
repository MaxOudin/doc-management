class CreateAffectations < ActiveRecord::Migration[7.1]
  def change
    create_table :affectations do |t|
      t.date :date_debut
      t.date :date_fin
      t.boolean :active, default: false
      t.references :user, null: false, foreign_key: true
      t.references :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
