class CreateDocspes < ActiveRecord::Migration[5.2]
  def change
    create_table :docspes do |t|

      t.timestamps
    end
  end
end
