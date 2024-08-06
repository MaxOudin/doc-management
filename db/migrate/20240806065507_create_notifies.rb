class CreateNotifies < ActiveRecord::Migration[7.1]
  def change
    create_table :notifies do |t|
      t.text :message

      t.timestamps
    end
  end
end
