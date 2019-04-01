class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.belongs_to :user
      t.belongs_to :item
      t.belongs_to :big_cart
      t.timestamps
    end
  end
end
