class Video < ActiveRecord::Base
  attr_accessible :title, :vimeo, :description
  validates :title, :presence => true, :length => { :minimum => 3 }
  validates :vimeo, :presence => true, :length => { :minimum => 30 }
end
