ActiveAdmin.register Project do
  	index do
   		column "Title" do |goal|
      		link_to goal.title, admin_goal_path(goal)
    	end
   		column "Content" do |goal|
    		link_to goal.content, admin_goal_path(goal)
   		end
  	end
end
