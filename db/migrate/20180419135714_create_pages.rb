class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.text :url
      t.text :title

      t.timestamps
    end
  end
end