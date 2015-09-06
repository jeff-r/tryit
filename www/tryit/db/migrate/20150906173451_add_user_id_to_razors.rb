class AddUserIdToRazors < ActiveRecord::Migration
  def change
    add_column :razors, :user_id, :integer
  end
end
