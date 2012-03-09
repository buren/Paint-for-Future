ActiveAdmin.register Goal do
  menu :label => "The Center"

  index do
    column "Title" do |goal|
      link_to goal.title, admin_goal_path(goal)
    end
    column "Release Date", :created_at
    column "Content" do |goal|
    	goal.content.html_safe
    end
    default_actions
  end
  
end
