ActiveAdmin.register Goal, :as => "Center" do
  menu :parent => "Informational"

  index do
    column "Title" do |center|
      link_to center.title, admin_center_path(center)
    end
    column "Release Date", :created_at
    column "Content" do |center|
    	center.content.html_safe
    end
    default_actions
  end


  action_item :only => :show do
    link_to('View on site', goals_path)
  end
  
  action_item :only => :index do
    link_to('View on site', goals_path)
  end
end
