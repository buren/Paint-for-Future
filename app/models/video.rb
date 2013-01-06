class Video < ActiveRecord::Base
  attr_accessible :title, :description, :logo, :homepage, :homepage_slogan, :position
  validates :homepage, :presence => true
  validates :homepage_slogan, :presence => true
  validates :position, :presence => true
  validates :position, :inclusion => 1..100
end
