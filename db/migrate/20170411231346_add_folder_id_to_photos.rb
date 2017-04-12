class AddFolderIdToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :folder_id, :integer
  end
end
