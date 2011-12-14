class Video < ActiveRecord::Base
  attr_accessible :title, :description
  validates :title, :presence => true, :length => { :minimum => 3 }
end
