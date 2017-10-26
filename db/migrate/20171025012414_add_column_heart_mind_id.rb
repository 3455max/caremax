class AddColumnHeartMindId < ActiveRecord::Migration[5.1]
  def change
    add_column :hearts, :mind_id, :integer
  end
end
