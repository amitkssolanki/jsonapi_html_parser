class CreateHeaderTags < ActiveRecord::Migration[5.2]
  def change
    create_table :header_tags do |t|
      t.text :content
      t.string :type
      t.integer :page_id, null: false

      t.timestamps
    end
  end
end
