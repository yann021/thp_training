class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
    add_reference :students, :course, foreign_key: true
  end
end
