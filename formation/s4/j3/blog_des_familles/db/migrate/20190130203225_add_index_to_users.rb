class AddIndexToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_reference :articles, :categorie, foreign_key: true
  	add_reference :commentaires, :article, foreign_key: true
  	add_reference :commentaires, :user, foreign_key: true
  	add_reference :likes, :article, foreign_key: true
  	add_reference :likes, :user, foreign_key: true
  end
end
