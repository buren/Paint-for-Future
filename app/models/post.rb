class Post < ActiveRecord::Base
  attr_accessible :image, :title, :name, :content, :remote_image_url, :published_at, :sub_title, :publish
  mount_uploader :image, PostImageUploader
  validates :name, :title, :published_at, :content, :presence => true

  scope :all
  scope :published_posts, where(:publish => true)
  scope :unpublished_posts, where(:publish => false)


  def to_param
  	"#{id} #{sub_title}".parameterize
  end
end

