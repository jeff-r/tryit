class AddUserIdToBlades < ActiveRecord::Migration
  def change
    add_column :blades, :user_id, :integer
  end
end
