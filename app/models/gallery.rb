class Gallery < ActiveRecord::Base
	attr_accessible :description, :image, :video, :url_for_video
	mount_uploader :image, PostImageUploader
end
