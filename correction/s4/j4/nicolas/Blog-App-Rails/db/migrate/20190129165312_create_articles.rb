class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.timestamps
    end

    add_reference :articles, :user, foreign_key: true
  end
end
