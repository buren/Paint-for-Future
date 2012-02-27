ActiveAdmin.register Project do
  	index do
   		column "Title" do |project|
      		link_to project.title, admin_project_path(project)
    	end
   		column "Content" do |project|
    		link_to project.content, admin_project_path(project)
   		end
  	end
end
