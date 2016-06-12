class AddColumnMoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :No_Disponibilidad, :string
    add_column :users, :No_Horario, :string
    add_column :users, :No_TamannoAuto, :string
    add_column :users, :No_Nivel, :string
    add_column :users, :telefono, :numeric
    add_column :users, :email, :string
  end
end
