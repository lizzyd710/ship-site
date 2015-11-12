class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
    	t.belongs_to :fandom, index: true
    	t.belongs_to :fanfic, index: true
    	#t.belongs_to :image, index: true
    	#t.belongs_to :video, index: true
      t.timestamps
    end
  end
end
