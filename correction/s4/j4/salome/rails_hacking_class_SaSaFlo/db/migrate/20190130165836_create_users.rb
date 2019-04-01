class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      # Création de nos colonnes
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
  end
end
