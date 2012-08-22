class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :description, :job_title, :image, :website
  mount_uploader :image, PostImageUploader
  validates :name, :presence => true
  validates :email, :presence => true
end
