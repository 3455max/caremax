class AddColumnPicture < ActiveRecord::Migration[5.1]
  def change

    add_column :pictures, :heart, :string
    add_column :pictures, :image, :string
    
  end
end
