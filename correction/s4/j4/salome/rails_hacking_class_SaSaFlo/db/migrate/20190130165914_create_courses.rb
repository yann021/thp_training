class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      # Création de nos colonnes
      t.string :title
      t.text :description
      t.belongs_to :user
      t.timestamps
    end
  end
end
