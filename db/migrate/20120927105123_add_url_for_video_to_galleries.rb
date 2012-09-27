class AddUrlForVideoToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :url_for_video, :string
  end
end
