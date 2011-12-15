class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :description, :job_title, :image
  mount_uploader :image, PostImageUploader
  validates :name, :presence => true
  validates :email, :presence => true
  validates :phone_number, :presence => true
end
