ActiveAdmin.register Project do
  	index do
   		column "Title" do |project|
      		link_to project.title, admin_project_path(project)
    	end
   		column "Content" do |project|
    		link_to project.content.html_safe, admin_project_path(project)
   		end
  	end


  action_item :only => :show do
    link_to('View on site', projects_path)
  end

  action_item :only => :index do
    link_to('View on site', projects_path)
  end

end
