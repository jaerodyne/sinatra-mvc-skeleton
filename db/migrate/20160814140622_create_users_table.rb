class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :email
  		t.string :hash_password

  		t.timestamps(null: false)
  	end
  end
end
