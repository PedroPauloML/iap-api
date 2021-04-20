class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.string :cover
      t.string :title
      t.string :caption
      t.string :content_html
      t.string :content_text
      t.boolean :published, default: false
      t.datetime :published_at
      t.references :church, null: false, foreign_key: true
      t.references :author, null: false

      t.timestamps
    end
  end
end
