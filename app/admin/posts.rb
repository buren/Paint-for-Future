ActiveAdmin.register Post do
  menu :label => "News"

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Post", :multipart => true do
      f.input :name, :as => :select, :collection => ["FREDRIK BECK", "SUSANNE HOLMSATER", "LUCAS LENNIG", "DANIEL LEKSELL"]
      f.input :title
      f.input :published_at
      f.input :content, :hint => "You can use HTML, use <br> tag for new line, <h3> for header and <b> for bold"
      f.input :remote_image_url, :as => :url, :hint => "Provide URL to jpg, giff or png image"
      f.input :image, :as => :file, :hint => "Select any jpg, giff or png image"
    end
    f.buttons
  end
  
  index do
    column "Image" do |post|
      image_tag post.image_url(:thumb).to_s if post.image?
    end
    column "Title" do |post|
      link_to post.title, admin_post_path(post)
    end
    column "Content" do |post|
      link_to post.content.html_safe, admin_post_path(post)
    end
    default_actions
  end

  action_item :only => :show do
    link_to('View on site', posts_path)
  end

end
