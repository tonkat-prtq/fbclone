class AddBlogRefToFeeds < ActiveRecord::Migration[5.2]
  def change
    add_reference :feeds, :blog, foerign_key: true
  end
end
