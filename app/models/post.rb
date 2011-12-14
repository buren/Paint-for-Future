class Post < ActiveRecord::Base
  attr_accessible :image, :title, :name, :content, :remote_image_url, :published_at
  mount_uploader :image, PostImageUploader
  validates :name, :presence => true, :length => { :minimum => 2 }
  validates :title, :presence => true, :length => { :minimum => 3 }
end

