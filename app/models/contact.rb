class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :description, :job_title, :image, :website, :position
  mount_uploader :image, PostImageUploader
  validates :name, :presence => true
  validates :email, :presence => true
  validates :position, :presence => true
  validates :position, :inclusion => 1..100

  def to_param
  	"#{id} #{name}".parameterize
  end
end
