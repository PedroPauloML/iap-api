class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :caption
      t.text :content_html
      t.text :content_text
      t.boolean :published, default: false
      t.datetime :published_at
      t.references :church, null: false, foreign_key: true
      t.references :author, null: false

      t.timestamps
    end
  end
end
