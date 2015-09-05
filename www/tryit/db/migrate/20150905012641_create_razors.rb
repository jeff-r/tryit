class CreateRazors < ActiveRecord::Migration
  def change
    create_table :razors do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
