class AddLogoToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :logo, :string
  end
end
