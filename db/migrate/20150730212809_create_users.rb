class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username
    	t.string :email
    	t.string :password_digest
    	t.string :profilepic
    	t.text :bio
      t.timestamps
    end
  end
end
