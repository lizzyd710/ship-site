class AddChapterReferenceToWorks < ActiveRecord::Migration
  def change
  	add_reference :works, :chapter, index: true
  end
end
