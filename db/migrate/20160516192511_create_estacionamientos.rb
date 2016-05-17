class CreateEstacionamientos < ActiveRecord::Migration
  def change
    create_table :estacionamientos do |t|
      t.integer :ID_Parqueo, limit: 5
      t.integer :Nivel, limit: 2
      t.string :Distrito, limit: 25

      t.timestamps null: false
    end
  end
end
