ActiveAdmin.register Message do
	
	 form do |f|
    f.inputs "Message" do
      f.input :message_type, :as => :select, :collection => ["Announcement", "Donate Message", "Project intro text", "About us"], :hint => "If Announcement is selected the message will show up on the top of each page"
      f.input :title
      f.input :content
    end
    f.buttons
  end

  index do
    column "Message Type" do |message|
      link_to message.message_type, admin_message_path(message)
    end
    column "Title" do |message|
      link_to message.title, admin_message_path(message)
    end
    column "Content" do |message|
      link_to message.content, admin_message_path(message)
    end
    default_actions
  end
end
