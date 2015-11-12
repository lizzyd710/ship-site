class CreateFanfics < ActiveRecord::Migration
  def change
    create_table :fanfics do |t|
    	t.string :title
    	t.text :description
    	t.text :rating
    	t.string :fandoms
    	t.text :characters
    	t.text :ships
    	t.text :friendships
    	t.boolean :completed
    	t.integer :chapters
        t.text :content
        t.references :user
        t.timestamps
    end
  end
end