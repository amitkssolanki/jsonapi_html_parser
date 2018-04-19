class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.text :url
      t.text :content
      t.integer :page_id, null: false

      t.timestamps
    end
  end
end
