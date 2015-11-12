class ChangeCharacters < ActiveRecord::Migration
  def change
  	  	change_table :characters do |t|
  		t.string :name
  		t.references :fandom
  	end
  end
end
