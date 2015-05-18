class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :password_digest, null: false
      t.string :identification_number, null: false
      t.string :phone, null: false

      t.timestamps null: false
    end
  end
end
