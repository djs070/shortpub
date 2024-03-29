class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :body
      t.references :author, index: true

      t.timestamps
    end
  end
end
