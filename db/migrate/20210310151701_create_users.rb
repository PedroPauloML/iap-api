class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.boolean :account_confirmed, default: false
      t.references :church, null: false, foreign_key: true

      t.timestamps
    end
  end
end