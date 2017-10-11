class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.date :date
      t.string :people
      t.string :where
      t.string :what

      t.timestamps
    end
  end
end
