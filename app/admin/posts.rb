ActiveAdmin.register Post do
  menu :label => "News"

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Post", :multipart => true do
      f.input :name, :hint => "Your name"
      f.input :title
      f.input :content, :hint => "You can use HTML, use <br /> tag for new line, <h3> for header and <b> for bold."
      f.input :remote_image_url, :hint => "Provide URL to jpg, giff, png image"
      f.input :vimeo_content, :as => :text, :hint => "You can add any video-embeded code here"
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
    column "Release Date", :created_at
    column :content
    default_actions
  end
end
