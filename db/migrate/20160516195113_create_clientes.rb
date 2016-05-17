class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :ID_Cliente, limit: 11
      t.integer :ID_Parqueo, limit: 5
      t.string :Nombre, limit: 25
      t.string :Apellido, limit: 25
      t.string :Correo, limit: 50
      t.string :Contraseña, limit: 50

      t.timestamps null: false
    end
  end
end
