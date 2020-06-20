class Users < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.string :username
<<<<<<< HEAD
      t.string :password_digest
=======
      t.string :password
>>>>>>> 90cf43f5e6153879d07da07a2fc920d74c5a30a6
    end
  end

  def down
    drop_table :users
  end
end
