class Post < ActiveRecord::Base
  attr_accessible :image, :title, :name, :content, :remote_image_url, :published_at, :sub_title
  mount_uploader :image, PostImageUploader
  validates :name, :title, :published_at, :content, :presence => true
end

