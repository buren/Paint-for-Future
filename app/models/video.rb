class Video < ActiveRecord::Base
  attr_accessible :title, :description, :logo, :homepage, :homepage_slogan
  validates :homepage, :presence => true
end
