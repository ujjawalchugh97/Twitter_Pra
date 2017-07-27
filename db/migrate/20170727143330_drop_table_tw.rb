class DropTableTw < ActiveRecord::Migration[5.1]
   def up
    drop_table :tweets
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
