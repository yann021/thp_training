class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :name
      t.timestamps
    end
    add_reference :links, :user, foreign_key: true
  end
end
