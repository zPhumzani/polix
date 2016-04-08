class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, limit: 40
      t.string :last_name, limit: 50
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
