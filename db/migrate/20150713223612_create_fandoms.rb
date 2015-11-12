class CreateFandoms < ActiveRecord::Migration
  def change
    create_table :fandoms do |t|
    	t.text :name
    	t.text :category
      t.timestamps
    end
  end
end
