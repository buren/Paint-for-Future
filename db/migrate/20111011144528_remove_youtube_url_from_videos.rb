class RemoveYoutubeUrlFromVideos < ActiveRecord::Migration
  def up
    remove_column :videos, :youtube_url
  end

  def down
    add_column :videos, :youtube_url, :string
  end
end
