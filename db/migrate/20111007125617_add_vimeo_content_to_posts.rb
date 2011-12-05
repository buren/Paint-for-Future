class AddVimeoContentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :vimeo_content, :content
  end
end
