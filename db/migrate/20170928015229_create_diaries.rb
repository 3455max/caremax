class CreateDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :diaries do |t|
      t.date :date
      t.text :comment
      t.string :photo

      t.timestamps
    end
  end
end
