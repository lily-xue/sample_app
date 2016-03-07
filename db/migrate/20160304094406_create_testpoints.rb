class CreateTestpoints < ActiveRecord::Migration
  def change
    create_table :testpoints do |t|
      t.string :firsttheme
      t.string :secondtheme
      t.string :thirdtheme
      t.string :point
      t.string :step
      t.integer :created_id
      t.integer :result

      t.timestamps
    end
  end
end
