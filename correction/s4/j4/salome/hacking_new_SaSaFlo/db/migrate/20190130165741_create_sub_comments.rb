class CreateSubComments < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_comments do |t|
      #On créer les lignes de notre table
      t.text :content
      t.belongs_to :user
      t.belongs_to :comment
      t.timestamps
    end
  end
end
