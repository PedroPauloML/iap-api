class AddPasswordRecoverTokenToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password_recover_token, :string
  end
end
