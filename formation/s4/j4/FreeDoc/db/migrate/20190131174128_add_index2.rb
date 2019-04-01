class AddIndex2 < ActiveRecord::Migration[5.2]
  def change
    add_reference :docspes, :doctor, foreign_key: true
	add_reference :docspes, :speciality, foreign_key: true

  end
end
