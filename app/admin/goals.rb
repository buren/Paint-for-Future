ActiveAdmin.register Goal do
  menu :label => "The Orphanage"

  index do
    column "Title" do |goal|
      link_to goal.title, admin_goal_path(goal)
    end
    column "Release Date", :created_at
    column :content
    default_actions
  end
  
end
