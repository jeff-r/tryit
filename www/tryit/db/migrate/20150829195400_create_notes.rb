class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :thing_id
      t.text :text

      t.timestamps null: false
    end
  end
end
