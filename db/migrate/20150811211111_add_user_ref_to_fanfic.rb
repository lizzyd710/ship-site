class AddUserRefToFanfic < ActiveRecord::Migration
  def change
    add_reference :fanfics, :user, index: true
  end
end
