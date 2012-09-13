ActiveAdmin.register Message, :as => "Static Texts" do
  menu :parent => "Informational"
	
	 form do |f|
    f.inputs "Message" do
      f.input :message_type, :as => :select, :collection => ["Announcement", "Donate Message", "Project intro text", "About us", "PDF-links"], :hint => "If Announcement is selected the message will show up on the top of each page"
      f.input :title, :hint => "Required for Announcement/Donate Message/About us, NOT required for Project intro text and PDF-links"
      f.input :content, :hint => "Plain text or any html"
    end
    f.buttons
  end

  index do
    column "Message Type" do |static_text|
      link_to static_text.message_type, admin_static_text_path(static_text)
    end
    column "Title" do |static_text|
      link_to static_text.title, admin_static_text_path(static_text)
    end
    column "Content" do |static_text|
      link_to static_text.content, admin_static_text_path(static_text)
    end
    default_actions
  end
end
