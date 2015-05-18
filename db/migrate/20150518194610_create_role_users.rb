class CreateRoleUsers < ActiveRecord::Migration
  def change
    create_table :role_users do |t|
      t.integer :user_id, null: false
      t.integer :role_id, null: false

      t.timestamps null: false
    end
  end
end
