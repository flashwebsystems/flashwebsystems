class CreateEstacionamientos < ActiveRecord::Migration
  def change
    create_table :estacionamientos do |t|
      t.date :fe_inicio
      t.date :fe_final
      t.decimal :monto_pagar, precision: 9, scale: 2
      t.string :mensaje
      t.string :status
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
