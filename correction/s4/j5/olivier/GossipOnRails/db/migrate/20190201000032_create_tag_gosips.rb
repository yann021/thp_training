class CreateTagGosips < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_gosips do |t|
      t.timestamps
    end
  end
end
