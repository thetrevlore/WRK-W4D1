class DropUsersTable < ActiveRecord::Migration
  def change
    drop_table :users_tables
  end
end
