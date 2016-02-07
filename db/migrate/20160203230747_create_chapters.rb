class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.timestamps null: false
      t.string :title
      t.integer :chapter_number
      t.text :content
      t.references :work
    end
  end
end
