class ChangeColmnHearts < ActiveRecord::Migration[5.1]
  def change
    change_column :hearts, :feeling, :integer    
  end
end
