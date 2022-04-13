class CreateUser1s < ActiveRecord::Migration[7.0]
  def change
    create_table :user1s do |t|
      t.string :email
      t.string :login
      t.integer :age

      t.timestamps
    end
  end
end
