class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    #On créer les lignes de notre table
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
  end
end
