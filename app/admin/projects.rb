ActiveAdmin.register Project do
  	index do
   		column "Title" do |goal|
      		link_to project.title, admin_project_path(project)
    	end
   		column "Content" do |goal|
    		link_to project.content, admin_project_path(project)
   		end
  	end
end
