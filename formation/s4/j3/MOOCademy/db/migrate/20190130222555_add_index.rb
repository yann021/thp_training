class AddIndex < ActiveRecord::Migration[5.2]
  def change
  	add_reference :lecons, :cour, foreign_key: true
  end
end
