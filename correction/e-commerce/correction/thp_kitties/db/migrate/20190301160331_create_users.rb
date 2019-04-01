class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.text :description
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
