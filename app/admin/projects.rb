ActiveAdmin.register Project do
    menu :parent => "Informational"

  	index do
   		column "Title" do |project|
      		link_to project.title, admin_project_path(project)
    	end
   		column "Content" do |project|
    		link_to project.content.html_safe, admin_project_path(project)
   		end
  	end


  form do |f|
    f.inputs "Project" do
      f.input :title
      f.input :content, :input_html => {:class => "ckeditor"}
    end
    f.buttons
  end


  action_item :only => :show do
    link_to('View on site', projects_path)
  end

  action_item :only => :index do
    link_to('View on site', projects_path)
  end

end
