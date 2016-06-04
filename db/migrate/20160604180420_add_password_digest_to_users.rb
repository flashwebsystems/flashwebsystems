class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :logins, :password_digest, :string
  end
end
