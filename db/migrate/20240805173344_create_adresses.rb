class CreateAdresses < ActiveRecord::Migration[7.1]
  def change
    create_table :adresses do |t|
      t.string :nom
      t.string :code
      t.float :longitude
      t.float :latitude
      t.integer :numero
      t.string :rue
      t.string :rue_2
      t.integer :code_postal
      t.string :ville
      t.string :pays
      t.boolean :principale, default: false

      t.timestamps
    end
  end
end
