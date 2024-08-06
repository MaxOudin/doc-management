class CreateAdresses < ActiveRecord::Migration[7.1]
  def change
    create_table :adresses do |t|
      t.string :addressable_type
      t.bigint :addressable_id
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

      t.timestamps
    end

    add_index :adresses, [:addressable_type, :addressable_id]
  end
end
