class CreateMinds < ActiveRecord::Migration[5.1]
  def change
    create_table :minds do |t|

      t.timestamps
    end
  end
end
