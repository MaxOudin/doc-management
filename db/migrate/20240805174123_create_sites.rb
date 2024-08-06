class CreateSites < ActiveRecord::Migration[7.1]
  def change
    create_table :sites do |t|
      t.string :nom
      t.string :code
      t.float :longitude
      t.float :latitude
      t.references :admin1, null: false, foreign_key: true

      t.timestamps
    end
  end
end
