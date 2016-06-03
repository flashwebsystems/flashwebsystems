class CreateSexos < ActiveRecord::Migration
  def change
    create_table :sexos do |t|
      t.string :type
      t.string :name
      t.references :login, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
