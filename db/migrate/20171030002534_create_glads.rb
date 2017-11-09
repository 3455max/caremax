class CreateGlads < ActiveRecord::Migration[5.1]
  def change
    create_table :glads do |t|

      t.text :meigen
      t.integer :mind_id

      t.timestamps
    end
  end
end
