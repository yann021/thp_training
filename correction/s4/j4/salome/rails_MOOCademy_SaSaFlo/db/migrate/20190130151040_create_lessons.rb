class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      # Création de la colonne Title qui est une string
      t.string :title
      # Création de la colonne Body qui est un text
      t.text :body
      # On indique que cette table est liée à la table course
      t.belongs_to :course, index: true
      t.timestamps
    end
  end
end
