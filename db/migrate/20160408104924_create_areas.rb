class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.string :description
      t.string :testpoint_id

      t.timestamps
    end



  end
end
