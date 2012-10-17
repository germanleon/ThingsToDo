class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :salt
      t.string :email_address
      t.string :first_name
      t.string :last_name
      t.string :about_me

      t.timestamps
    end
  end
end
