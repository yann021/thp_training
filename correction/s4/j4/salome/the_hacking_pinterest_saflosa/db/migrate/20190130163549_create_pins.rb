#On initialise une class
class CreatePins < ActiveRecord::Migration[5.2]
  #initialisation d'une méthode pour créer nos colonnes où seront stocké nos données
  def change
    create_table :pins do |t|
      t.string :pin
      #On crée un lien entre la table pins et la table user
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
