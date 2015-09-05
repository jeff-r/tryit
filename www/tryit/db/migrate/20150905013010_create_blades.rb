class CreateBlades < ActiveRecord::Migration
  def change
    create_table :blades do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
