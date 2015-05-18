class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :title, null: false
      t.string :route, null: false
      t.string :controller, null: false

      t.timestamps null: false
    end
  end
end
