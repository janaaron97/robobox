class AddNameToFolders < ActiveRecord::Migration[5.0]
  def change
    add_column :folders, :name, :string
  end
end
