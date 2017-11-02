class CreateGlads < ActiveRecord::Migration[5.1]
  def change
    create_table :glads do |t|

      t.timestamps
    end
  end
end
