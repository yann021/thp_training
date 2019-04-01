class CreateBigCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :big_carts do |t|
      t.timestamps
    end
  end
end
