class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      #On créer les lignes de notre table
      t.text :content
      t.belongs_to :user
      t.timestamps
    end
  end
end
