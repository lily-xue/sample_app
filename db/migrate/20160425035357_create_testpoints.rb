class CreateTestpoints < ActiveRecord::Migration
  def change
    create_table :testpoints do |t|
      t.string :point
      t.string :step
      t.integer :user_id
      t.references :area, index: true

      t.timestamps
    end
  end
end
