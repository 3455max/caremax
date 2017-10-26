class CreateMinds < ActiveRecord::Migration[5.1]
  def change
    create_table :minds do |t|
      t.string :name

      t.timestamps
    end
  end
end
