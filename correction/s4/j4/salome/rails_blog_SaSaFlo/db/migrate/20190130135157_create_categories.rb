class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      #Création de nos colonnes
      t.string :name
      t.timestamps
    end
  end
end
