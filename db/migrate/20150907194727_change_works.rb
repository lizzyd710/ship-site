class ChangeWorks < ActiveRecord::Migration
  def change
  	change_table :works do |t|
  		t.remove :fandom_id, :fanfic_id
  		t.string :title
  		t.text :description
  		t.boolean :complete, default: false
  		t.string :rating
  		t.text :content
  		t.references :user
  		t.references :fandom
  	end
  end
end