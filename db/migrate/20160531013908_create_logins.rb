class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name
      t.string :lastname
      t.string :correo
      t.string :password
      t.string :sexo

      t.timestamps null: false
    end
  end
end
