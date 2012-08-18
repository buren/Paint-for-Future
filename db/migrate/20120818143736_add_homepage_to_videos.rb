class AddHomepageToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :homepage, :string
  end
end
