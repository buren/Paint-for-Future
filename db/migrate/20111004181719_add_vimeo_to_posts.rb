class AddVimeoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :vimeo, :string
  end
end
