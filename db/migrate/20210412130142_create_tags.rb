class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.string :slug
      t.string :taggable_id
      t.string :taggable_type

      t.timestamps
    end
  end
end
