class ChangeColumnPicture < ActiveRecord::Migration[5.1]
  def change

    rename_column :pictures, :image, :filename

  end
end
