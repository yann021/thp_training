class CreateSubComments < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_comments do |t|
      t.string :body
      t.timestamps
    end
    add_reference :sub_comments, :comment, foreign_key: true
    add_reference :sub_comments, :user, foreign_key: true
  end
end
