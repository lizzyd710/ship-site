class CreateFanfics < ActiveRecord::Migration
  def change
    #drop_table fanfics
    create_table :fanfics do |t|
    	t.string :title
    	#t.text :description
    	#t.text :rating
    	t.string :fandoms
    	#t.text :characters
    	#t.text :ships
    	#t.text :friendships
    	#t.boolean :completed
    	#t.int :chapters
    	#t.date :created_on
    	#t.date :updated_on
        t.integer :id
        t.timestamps
    end
  end
end