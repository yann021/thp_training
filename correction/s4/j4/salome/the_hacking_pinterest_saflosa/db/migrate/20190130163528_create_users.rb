#Initialisation de la class
class CreateUsers < ActiveRecord::Migration[5.2]
  #initialisation d'une méthode pour créer nos colonnes où seront stocké nos données
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
  end
end
