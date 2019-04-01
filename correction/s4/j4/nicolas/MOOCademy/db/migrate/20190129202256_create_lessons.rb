class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string  :title
      t.string  :body
      t.timestamps
    end
    add_reference :lessons, :course, foreign_key: true
  end
end
