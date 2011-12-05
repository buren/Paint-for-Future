class RemoveVimeoFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :vimeo
  end

  def down
    add_column :posts, :vimeo, :string
  end
end
