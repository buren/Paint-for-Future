class Project < ActiveRecord::Base
  attr_accessible :title, :content
  validates :title, :presence => true, :length => { :minimum => 3 }
  validates :content, :presence => true
end
