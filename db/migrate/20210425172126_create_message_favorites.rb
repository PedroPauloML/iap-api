class CreateMessageFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :message_favorites do |t|
      t.references :message, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
