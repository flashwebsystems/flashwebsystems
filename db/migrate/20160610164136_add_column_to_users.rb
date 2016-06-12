class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :price_day, :decimal, precision: 9, scale: 2
    add_column :users, :price_month, :decimal, precision: 9, scale: 2
  end
end
