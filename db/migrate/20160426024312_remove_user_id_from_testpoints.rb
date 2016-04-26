class RemoveUserIdFromTestpoints < ActiveRecord::Migration
  def change
    remove_column :testpoints, :user_id, :integer
  end
end
