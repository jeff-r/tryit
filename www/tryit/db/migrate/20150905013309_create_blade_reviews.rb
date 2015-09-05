class CreateBladeReviews < ActiveRecord::Migration
  def change
    create_table :blade_reviews do |t|
      t.text :text
      t.date :date
      t.integer :razor_id
      t.integer :blade_id

      t.timestamps null: false
    end
  end
end
