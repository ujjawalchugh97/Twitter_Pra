class RemoveUnlockTokenFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_index(:users, :name => "index_users_on_unlock_token")
  end
end
