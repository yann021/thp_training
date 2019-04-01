class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.timestamps
    end
    add_reference :comments, :article, foreign_key: true
    add_reference :comments, :user, foreign_key: true
  end
end
