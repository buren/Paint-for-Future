ActiveAdmin.register Post do
  menu :label => "Log"

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Post", :multipart => true do
      f.input :name, :as => :select, :collection => ["Fredrik Beck", "Lucas Lennig", "Daniel Leksell"], :hint => "Your name"
      f.input :title
      f.input :published_at, :hint => "You can add videos as long as the width doesn't exceed 380px"
      f.input :content, :hint => "You can use HTML, use <br /> tag for new line, <h3> for header and <b> for bold"
      f.input :remote_image_url, :as => :url, :hint => "Provide URL to jpg, giff or png image"
      f.input :image, :as => :file, :hint => "Select any jpg, giff or png image"
    end
    f.buttons
  end
  
  index do
    column "Name" do |post|
      link_to post.name, admin_post_path(post)
    end
    column "Title" do |post|
      link_to post.title, admin_post_path(post)
    end
    column "Date" do |post|
      link_to post.published_at, admin_post_path(post)
    end
    column "Content" do |post|
      link_to post.content, admin_post_path(post)
    end
    default_actions
  end
end
