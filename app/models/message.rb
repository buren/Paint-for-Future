class Message < ActiveRecord::Base
 validates :content, :message_type, :presence => true
end
