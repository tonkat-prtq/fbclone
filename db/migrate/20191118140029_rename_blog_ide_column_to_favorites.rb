class RenameBlogIdeColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :blog_ide, :blog_id
  end
end
