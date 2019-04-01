class CreatePotins < ActiveRecord::Migration[5.2]
  def change
    create_table :potins do |t|
    	t.string :title
    	t.text :content
    	t.belongs_to :user, index: true
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
