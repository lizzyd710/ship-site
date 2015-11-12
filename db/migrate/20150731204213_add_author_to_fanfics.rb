class AddAuthorToFanfics < ActiveRecord::Migration
  def change
    add_column :fanfics, :author, :string
  end
end
