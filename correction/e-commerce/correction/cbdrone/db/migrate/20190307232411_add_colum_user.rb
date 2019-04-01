class AddColumUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :numberCart, :integer
  end
end
