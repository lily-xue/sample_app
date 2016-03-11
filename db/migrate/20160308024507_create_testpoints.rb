class CreateTestpoints < ActiveRecord::Migration
  def change
    create_table :testpoints do |t|
      t.integer :user_id
      t.string :point
      t.string :step
      t.string :level
      t.timestamps
    end
  add_index :testpoint,[:user_id]
  end
end
