class Post < ActiveRecord::Base
  attr_accessible :image, :title, :name, :content, :remote_image_url, :published_at
  mount_uploader :image, PostImageUploader
  validates :name, :title, :presence => true
end

