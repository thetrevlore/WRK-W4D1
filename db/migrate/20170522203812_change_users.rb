class ChangeUsers < ActiveRecord::Migration

  def change
    change_table :users do |t|
      t.remove :email, :name
      t.string :user_name, null: false
    end

    add_index :users, :user_name, unique: true
  end
end
