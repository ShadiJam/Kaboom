class AddPicUrlToLibrary < ActiveRecord::Migration[5.0]
  def change
    add_column :libraries, :pic_url, :string
  end
end
