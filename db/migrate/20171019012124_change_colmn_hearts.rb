class ChangeColmnHearts < ActiveRecord::Migration[5.1]
#  def change
#    change_column :hearts, :feeling, :integer    
#  end

  def up
    change_column :hearts, :feeling, :integer
  end

  def down
    change_column :hearts, :feeling, :string
  end
end
