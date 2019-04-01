#Initialisation de la class
class CreateComments < ActiveRecord::Migration[5.2]
  #initialisation d'une méthode pour créer nos colonnes où seront stocké nos données
  def change
    create_table :comments do |t|
      t.text :comment
      #On créé un lien entre la table comment et les tables user et pin
      t.belongs_to :user, index: true
      t.belongs_to :pin, index: true
      t.timestamps
    end
  end
end
