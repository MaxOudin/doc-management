class CreateRelances < ActiveRecord::Migration[7.1]
  def change
    create_table :relances do |t|
      t.text :message
      t.date :date_envoi
      t.references :sender, null: false, foreign_key: { to_table: :users }
      t.references :receiver, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
