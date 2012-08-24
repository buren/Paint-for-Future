class Message < ActiveRecord::Base
 validates :title, :content, :message_type, :presence => true
end
