class AddHomepageSloganToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :homepage_slogan, :string
  end
end
