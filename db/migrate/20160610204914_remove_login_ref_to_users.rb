class RemoveLoginRefToUsers < ActiveRecord::Migration
  def change
    remove_reference :users, :login, email: true, index: true, foreign_key: true
  end
end
