class AddColumndiary < ActiveRecord::Migration[5.1]
  def change

    add_column :diaries, :photo_type, :string

    add_column :diaries, :photo_data, :binary
  end
end
