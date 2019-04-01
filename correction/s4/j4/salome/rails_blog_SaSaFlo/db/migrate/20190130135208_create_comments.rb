class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      #Création de nos colonnes
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :article, index: true
      t.timestamps
    end
  end
end
