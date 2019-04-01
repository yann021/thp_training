class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body
      t.timestamps
    end
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :link, foreign_key: true
  end
end
