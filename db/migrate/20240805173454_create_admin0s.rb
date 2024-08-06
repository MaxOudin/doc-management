class CreateAdmin0s < ActiveRecord::Migration[7.1]
  def change
    create_table :admin0s do |t|
      t.string :nom
      t.string :code
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
