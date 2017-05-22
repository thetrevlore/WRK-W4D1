class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users_tables do |t|
      t.text :email
      t.text :name

      t.timestamps
    end
  end
end
