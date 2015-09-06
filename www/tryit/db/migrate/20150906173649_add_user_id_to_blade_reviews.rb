class AddUserIdToBladeReviews < ActiveRecord::Migration
  def change
    add_column :blade_reviews, :user_id, :integer
  end
end
