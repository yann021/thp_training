class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :url_img
      t.timestamps
    end
    add_reference :pins, :user, foreign_key: true
  end
end
