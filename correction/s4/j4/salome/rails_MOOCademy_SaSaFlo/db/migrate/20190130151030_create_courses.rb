class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      # Création de la colonne Title qui est une string
      t.string :title
      # Création de la colonne Description qui est un text
      t.text :description
      t.timestamps
    end
  end
end
