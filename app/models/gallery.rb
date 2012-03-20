class Gallery < ActiveRecord::Base
	attr_accessible :description, :image, :video
	mount_uploader :image, PostImageUploader
end
