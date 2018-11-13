class ChangeUsersTable < ActiveRecord::Migration[5.2]


  def change
    change_table :users do |u|
      u.remove :name, :email
      u.string :username, unique: true, null: false
    end
  end
end
