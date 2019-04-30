class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Nickname, :text
  end
end
