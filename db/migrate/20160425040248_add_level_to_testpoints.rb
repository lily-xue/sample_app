class AddLevelToTestpoints < ActiveRecord::Migration
  def change
  #  add_column :testpoints, :level, :string
  add_column :testpoints,:level,:string,default:"2级（普通案例）"
  end
end
