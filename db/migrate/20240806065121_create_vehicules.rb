class CreateVehicules < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicules do |t|
      t.string :immatriculation
      t.string :nom
      t.string :prenom
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
