class AddVideoToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :video, :text
  end
end
