class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :password
      t.float :sexo

      t.timestamps null: false
    end
  end
end
