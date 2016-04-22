class AddAreaIdToTestpoint < ActiveRecord::Migration
  def change
    add_column :testpoints, :area_id, :integer
    add_index :testpoints,[:user_id,:area_id,:id],unique:true
  end
end
