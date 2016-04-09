class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.string :testpoint_id
      t.string :integer

      t.timestamps
    end

add_index :areas, [:testpoint_id]


  end
end
