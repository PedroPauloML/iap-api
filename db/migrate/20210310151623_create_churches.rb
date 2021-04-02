class CreateChurches < ActiveRecord::Migration[6.1]
  def change
    create_table :churches do |t|

      t.timestamps
    end
  end
end
