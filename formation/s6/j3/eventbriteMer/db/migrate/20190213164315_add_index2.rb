class AddIndex2 < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :admin, :integer, null: false, default: 0
  	add_column :attendances, :number, :integer, null: false, default: 1
  end
end
