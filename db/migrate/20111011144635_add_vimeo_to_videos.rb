class AddVimeoToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :vimeo, :text
  end
end
