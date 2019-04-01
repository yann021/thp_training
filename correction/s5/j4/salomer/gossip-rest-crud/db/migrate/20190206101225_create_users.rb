class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name
    	t.boolean :is_admin
      t.text :description
      t.string :password_digest
      t.string :email
      t.integer :age

      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
