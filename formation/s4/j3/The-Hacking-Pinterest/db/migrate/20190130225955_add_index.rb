class AddIndex < ActiveRecord::Migration[5.2]
  def change
  	 add_reference :pins, :user, foreign_key: true
  	 add_reference :comments, :pin, foreign_key: true
  	 add_reference :comments, :user, foreign_key: true
  end
end
